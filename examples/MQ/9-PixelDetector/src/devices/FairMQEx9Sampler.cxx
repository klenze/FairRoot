/********************************************************************************
 *    Copyright (C) 2014 GSI Helmholtzzentrum fuer Schwerionenforschung GmbH    *
 *                                                                              *
 *              This software is distributed under the terms of the             * 
 *         GNU Lesser General Public Licence version 3 (LGPL) version 3,        *  
 *                  copied verbatim in the file "LICENSE"                       *
 ********************************************************************************/
/**
 * FairMQEx9Sampler.cpp
 *
 * @since 2016-03-08
 * @author R. Karabowicz
 */

#include <boost/thread.hpp>
#include <boost/bind.hpp>

#include "FairMQEx9Sampler.h"
#include "FairMQLogger.h"

#include "FairMQMessage.h"
#include "TMessage.h"
#include "TClonesArray.h"

#include "FairSource.h"
#include "FairFileSource.h"

using namespace std;

FairMQEx9Sampler::FairMQEx9Sampler()
  : FairMQDevice()
  , fOutputChannelName("data-out")
  , fAckChannelName("")
  , fRunAna(NULL)
  , fSource(NULL)
  , fInputObjects()
  , fNObjects(0)
  , fMaxIndex(-1)
  , fBranchNames()
  , fFileNames()
{
}

void FairMQEx9Sampler::InitTask() 
{
  fRunAna = new FairRunAna();
  if ( fFileNames.size() > 0 ) {
    fSource = new FairFileSource(fFileNames.at(0).c_str());
    for ( unsigned int ifile = 1 ; ifile < fFileNames.size() ; ifile++ ) 
      ((FairFileSource*)fSource)->AddFile(fFileNames.at(ifile));
  }
  fSource->Init();
  LOG(INFO) << "Going to request " << fBranchNames.size() << "  branches:";
  for ( unsigned int ibrn = 0 ; ibrn < fBranchNames.size() ; ibrn++ ) {
    LOG(INFO) << " requesting branch \"" << fBranchNames[ibrn] << "\"";
    int branchStat = fSource->ActivateObject((TObject**)&fInputObjects[fNObjects],fBranchNames[ibrn].c_str()); // should check the status...
    if ( fInputObjects[fNObjects] ) {
      LOG(INFO) << "Activated object \"" << fInputObjects[fNObjects] << "\" with name \"" << fBranchNames[ibrn] << "\" (" << branchStat << "), it got name: \"" << fInputObjects[fNObjects]->GetName() << "\"";
      if ( strcmp(fInputObjects[fNObjects]->GetName(),fBranchNames[ibrn].c_str()) )
	if ( strcmp(fInputObjects[fNObjects]->ClassName(),"TClonesArray") == 0 ) 
	  ((TClonesArray*)fInputObjects[fNObjects])->SetName(fBranchNames[ibrn].c_str());
      fNObjects++;
    }
  }
  if ( fMaxIndex < 0 )
    fMaxIndex = fSource->CheckMaxEventNo();
  LOG(INFO) << "Input source has " << fMaxIndex << " events.";
}

// helper function to clean up the object holding the data after it is transported.
void free_tmessage2(void* /*data*/, void *hint)
{
    delete (TMessage*)hint;
}

void FairMQEx9Sampler::Run()
{
  boost::thread ackListener(boost::bind(&FairMQEx9Sampler::ListenForAcks, this));

  int eventCounter = 0;

  // Check if we are still in the RUNNING state.
  while (CheckCurrentState(RUNNING))
    {
      if ( eventCounter == fMaxIndex ) break;

      Int_t readEventReturn = fSource->ReadEvent(eventCounter);

      if ( readEventReturn != 0 ) break;

      TMessage* message[1000];
      FairMQParts parts;
      
      for ( int iobj = 0 ; iobj < fNObjects ; iobj++ ) {
	message[iobj] = new TMessage(kMESS_OBJECT);
	message[iobj]->WriteObject(fInputObjects[iobj]);
	parts.AddPart(NewMessage(message[iobj]->Buffer(), message[iobj]->BufferSize(), free_tmessage2, message[iobj]));
      }
      
      Send(parts, fOutputChannelName);
      
      eventCounter++;
    }
  
  if ( strcmp(fAckChannelName.data(),"") != 0 ) {
    try
      {
	ackListener.join();
      }
    catch(boost::thread_resource_error& e)
      {
	LOG(ERROR) << e.what();
	exit(EXIT_FAILURE);
      }
  }
  
  LOG(INFO) << "Going out of RUNNING state";
}

void FairMQEx9Sampler::ListenForAcks()
{
  if ( strcmp(fAckChannelName.data(),"") != 0 ) {
    for (Long64_t eventNr = 0; eventNr < fMaxIndex ; ++eventNr)
      {
	unique_ptr<FairMQMessage> ack(NewMessage());
	Receive(ack,fAckChannelName.data());

	if (!CheckCurrentState(RUNNING))
	  {
	    break;
	  }
      }

    LOG(INFO) << "Acknowledged " << fMaxIndex << " messages.";
  }
}

FairMQEx9Sampler::~FairMQEx9Sampler()
{
}
