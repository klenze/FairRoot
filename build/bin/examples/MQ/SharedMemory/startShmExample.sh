#!/bin/bash

msgSize="1000000"
transport="zeromq"

if [[ $1 =~ ^[0-9]+$ ]]; then
    msgSize=$1
fi

echo "Starting shared memory example with message size of $msgSize bytes."
echo ""
echo "Usage: startShmExample [message size=1000000]"

SAMPLER="ex-shm-sampler"
SAMPLER+=" --id sampler1"
SAMPLER+=" --transport $transport"
# SAMPLER+=" --verbose TRACE"
SAMPLER+=" --msg-size $msgSize"
# SAMPLER+=" --msg-rate 1000"
SAMPLER+=" --mq-config /Users/turany/development/FairRoot/build/bin/config/ex-shm.json"
xterm -geometry 80x32+0+0 -hold -e /Users/turany/development/FairRoot/build/bin/examples/MQ/SharedMemory/$SAMPLER &

SINK="ex-shm-sink"
SINK+=" --id sink1"
SINK+=" --transport $transport"
# SINK+=" --verbose TRACE"
SINK+=" --mq-config /Users/turany/development/FairRoot/build/bin/config/ex-shm.json"
xterm -geometry 80x32+500+0 -hold -e /Users/turany/development/FairRoot/build/bin/examples/MQ/SharedMemory/$SINK &
