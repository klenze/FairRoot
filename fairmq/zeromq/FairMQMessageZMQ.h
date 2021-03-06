/********************************************************************************
 *    Copyright (C) 2014 GSI Helmholtzzentrum fuer Schwerionenforschung GmbH    *
 *                                                                              *
 *              This software is distributed under the terms of the             * 
 *         GNU Lesser General Public Licence version 3 (LGPL) version 3,        *  
 *                  copied verbatim in the file "LICENSE"                       *
 ********************************************************************************/
/**
 * FairMQMessageZMQ.h
 *
 * @since 2014-01-17
 * @author A. Rybalchenko
 */

#ifndef FAIRMQMESSAGEZMQ_H_
#define FAIRMQMESSAGEZMQ_H_

#include <cstddef>

#include <zmq.h>

#include "FairMQMessage.h"

class FairMQMessageZMQ : public FairMQMessage
{
  public:
    FairMQMessageZMQ();
    FairMQMessageZMQ(const size_t size);
    FairMQMessageZMQ(void* data, const size_t size, fairmq_free_fn* ffn, void* hint = NULL);

    virtual void Rebuild();
    virtual void Rebuild(const size_t size);
    virtual void Rebuild(void* data, const size_t size, fairmq_free_fn* ffn, void* hint = NULL);

    virtual void* GetMessage();
    virtual void* GetData();
    virtual size_t GetSize();

    virtual void SetMessage(void* data, const size_t size);

    virtual void CloseMessage();
    virtual void Copy(FairMQMessage* msg);
    virtual void Copy(const std::unique_ptr<FairMQMessage>& msg);

    virtual ~FairMQMessageZMQ();

  private:
    zmq_msg_t fMessage;
};

#endif /* FAIRMQMESSAGEZMQ_H_ */
