/********************************************************************************
 *    Copyright (C) 2014 GSI Helmholtzzentrum fuer Schwerionenforschung GmbH    *
 *                                                                              *
 *              This software is distributed under the terms of the             * 
 *              GNU Lesser General Public Licence (LGPL) version 3,             *  
 *                  copied verbatim in the file "LICENSE"                       *
 ********************************************************************************/
/**
 * ParameterMQServer.cxx
 *
 * @since 2015-10-26
 * @author M. Al-Turany, A. Rybalchenko
 */

#include "TMessage.h"
#include "TClass.h"
#include "Rtypes.h"

#include "FairRuntimeDb.h"
#include "FairParAsciiFileIo.h"
#include "FairParRootFileIo.h"
#include "FairParGenericSet.h"

#include "ParameterMQServer.h"
#include "FairMQLogger.h"
#include <options/FairMQProgOptions.h>

using namespace std;

// special class to expose protected TMessage constructor
class ParMQTMessage : public TMessage
{
  public:
  ParMQTMessage(void* buf, Int_t len)
    : TMessage(buf, len)
  {
    ResetBit(kIsOwner);
  }
};

ParameterMQServer::ParameterMQServer() :
    fRtdb(FairRuntimeDb::instance()),
    fFirstInputName("first_input.root"),
    fFirstInputType("ROOT"),
    fSecondInputName(""),
    fSecondInputType("ROOT"),
    fOutputName(""),
    fOutputType("ROOT"),
    fRequestChannelName("data"),
    fUpdateChannelName("")
{
}

void ParameterMQServer::Init()
{
  fRequestChannelName = fConfig->GetValue<string>("channel-name");
  fUpdateChannelName = fConfig->GetValue<string>("update-channel-name");

  if ( fRequestChannelName != "" )
    OnData(fRequestChannelName, &ParameterMQServer::ProcessRequest);
  if ( fUpdateChannelName != "" ) {
    OnData(fUpdateChannelName, &ParameterMQServer::ProcessUpdate);
  }
}

void ParameterMQServer::InitTask()
{
    fFirstInputName = fConfig->GetValue<string>("first-input-name");
    fFirstInputType = fConfig->GetValue<string>("first-input-type");
    fSecondInputName = fConfig->GetValue<string>("second-input-name");
    fSecondInputType = fConfig->GetValue<string>("second-input-type");
    fOutputName = fConfig->GetValue<string>("output-name");
    fOutputType = fConfig->GetValue<string>("output-type");

    if (fRtdb != 0)
    {
        // Set first input
        if (fFirstInputName != "")
        {
            if (fFirstInputType == "ROOT")
            {
                FairParRootFileIo* par1R = new FairParRootFileIo();
                par1R->open(fFirstInputName.data(), "UPDATE");
                fRtdb->setFirstInput(par1R);
            }
            else if (fFirstInputType == "ASCII")
            {
                FairParAsciiFileIo* par1A = new FairParAsciiFileIo();
                par1A->open(fFirstInputName.data(), "in");
                fRtdb->setFirstInput(par1A);
            }
        }

        // Set second input
        if (fSecondInputName != "")
        {
            if (fSecondInputType == "ROOT")
            {
                FairParRootFileIo* par2R = new FairParRootFileIo();
                par2R->open(fSecondInputName.data(), "UPDATE");
                fRtdb->setSecondInput(par2R);
            }
            else if (fSecondInputType == "ASCII")
            {
                FairParAsciiFileIo* par2A = new FairParAsciiFileIo();
                par2A->open(fSecondInputName.data(), "in");
                fRtdb->setSecondInput(par2A);
            }
        }

        // Set output
        if ( fUpdateChannelName == "" ) 
        {
            if (fOutputName != "")
            {
                if (fOutputType == "ROOT")
                {
                    FairParRootFileIo* parOut = new FairParRootFileIo(kTRUE);
                    parOut->open(fOutputName.data());
                    fRtdb->setOutput(parOut);
                }

                fRtdb->saveOutput();
            }
        }
    }
}

bool ParameterMQServer::ProcessRequest(FairMQMessagePtr& req, int /*index*/)
{
    string parameterName = "";
    FairParGenericSet* par = nullptr;

    string reqStr(static_cast<char*>(req->GetData()), req->GetSize());
    LOG(INFO) << "Received parameter request from client: \"" << reqStr << "\"";

    size_t pos = reqStr.rfind(",");
    string newParameterName = reqStr.substr(0, pos);
    int runId = stoi(reqStr.substr(pos + 1));
    LOG(INFO) << "Parameter name: " << newParameterName;
    LOG(INFO) << "Run ID: " << runId;

    LOG(INFO) << "Retrieving parameter...";
    // Check if the parameter name has changed to avoid getting same container repeatedly
    if (newParameterName != parameterName)
      {
        parameterName = newParameterName;
        par = static_cast<FairParGenericSet*>(fRtdb->getContainer(parameterName.c_str()));
      }
    fRtdb->initContainers(runId);

    LOG(INFO) << "Sending following parameter to the client:";
    if (par)
      {
        par->print();

        TMessage* tmsg = new TMessage(kMESS_OBJECT);
        tmsg->WriteObject(par);        FairMQMessagePtr rep(NewMessage(tmsg->Buffer(),
                                        tmsg->BufferSize(),
                                        [](void* /*data*/, void* object){ delete static_cast<TMessage*>(object); },
                                        tmsg));

        if (Send(rep, fRequestChannelName, 0) < 0)
          {
            LOG(ERROR) << "failed sending reply";
            return false;
          }
      }
    else
      {
        LOG(ERROR) << "Parameter uninitialized!";
        // Send an empty message back to keep the REQ/REP cycle
        FairMQMessagePtr rep(NewMessage());
        if (Send(rep, fRequestChannelName, 0) < 0)
          {
            LOG(ERROR) << "failed sending reply";
            return false;
          }
      }

    return true;
}

bool ParameterMQServer::ProcessUpdate(FairMQMessagePtr& update, int /*index*/)
{
  LOG(DEBUG) << "got process update message!";
  ParMQTMessage tm(update->GetData(), update->GetSize());

  std::string* text;

  // get the run id coded in the description of FairParSet
  FairParGenericSet* newPar = (FairParGenericSet*)tm.ReadObject(tm.GetClass());
  std::string parDescr = std::string(newPar->getDescription());
  uint runId = 0;
  if ( parDescr.find("RUNID") != std::string::npos )
    {
      parDescr.erase(0,parDescr.find("RUNID")+5);
      runId = atoi(parDescr.data());
      if ( parDescr.find("RUNID") != std::string::npos )
        parDescr.erase(0,parDescr.find("RUNID")+5);
    }
  fRtdb->initContainers(runId);

  newPar->setChanged(true); // trigger writing to file
  newPar->setStatic(true); // to get rid of error
  newPar->Print();

  if ( fRtdb->addContainer(newPar) )
    {
      text = new string("SUCCESS");
    }
  else
    {
      text = new string("FAIL");
    }

  Bool_t kParameterMerged = kTRUE;
  FairParRootFileIo* parOut = new FairParRootFileIo(kParameterMerged);
  parOut->open(fOutputName.data());
  fRtdb->setOutput(parOut);
  fRtdb->saveOutput();
  fRtdb->closeOutput();

  FairMQMessagePtr msg(NewMessage(const_cast<char*>(text->c_str()),
                                  text->length(),
                                  [](void* /*data*/, void* object) { delete static_cast<string*>(object); },
                                  text));

  if (Send(msg, fUpdateChannelName) < 0)
    {
      return false;
    }
  return true;
}

ParameterMQServer::~ParameterMQServer()
{
    delete fRtdb;
}
