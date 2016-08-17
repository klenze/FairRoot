#!/bin/bash

mcEngine="TGeant3"

echo "Supported data formats: binary, boost, boost-text, flatbuffers, msgpack, protobuf, tmessage"
dataFormat="binary"
if [ "$1" = "binary" ]; then
    echo "Using: binary"
elif [ "$1" = "boost" ]; then
    dataFormat="boost"
    echo "Using: boost (Boost binary)"
elif [ "$1" = "boost-text" ]; then
    dataFormat="boost-text"
    echo "Using: boost-text (Boost text)"
elif [ "$1" = "flatbuffers" ]; then
    if(true); then
        dataFormat="flatbuffers"
        echo "Using: flatbuffers (Google FlatBuffers)"
    else
        echo "Cannot use flatbuffers: library not found at build time"
        exit 1
    fi
elif [ "$1" = "msgpack" ]; then
    if(true); then
        dataFormat="msgpack"
        echo "Using: msgpack (MessagePack)"
    else
        echo "Cannot use msgpack: library not found at build time"
        exit 1
    fi
elif [ "$1" = "protobuf" ]; then
    dataFormat="protobuf"
    echo "Using: protobuf (Google Protocol Buffers)"
elif [ "$1" = "tmessage" ]; then
    dataFormat="tmessage"
    echo "Using: tmessage (Root TMessage)"
else
    echo "None or incorrect data format provided!"
    echo "Using: binary"
fi

tut3cfg="/Users/turany/development/FairRoot/build/bin/config/tut3-all-proxy.json"

SAMPLER="tut3-sampler"
SAMPLER+=" --id sampler1"
SAMPLER+=" --data-format $dataFormat"
SAMPLER+=" --chain-input 99"
SAMPLER+=" --input-file /Users/turany/development/FairRoot/examples/advanced/Tutorial3/macro/data/testdigi_$mcEngine.root"
SAMPLER+=" --parameter-file /Users/turany/development/FairRoot/examples/advanced/Tutorial3/macro/data/testparams_$mcEngine.root"
SAMPLER+=" --mq-config $tut3cfg"
xterm -geometry 80x23+0+0 -hold -e /Users/turany/development/FairRoot/build/bin/$SAMPLER &

PROXY1="proxy"
PROXY1+=" --id proxy1"
PROXY1+=" --mq-config $tut3cfg"
xterm -geometry 80x23+0+350 -hold -e /Users/turany/development/FairRoot/build/bin/$PROXY1 &

PROCESSOR1="tut3-processor"
PROCESSOR1+=" --id processor1"
PROCESSOR1+=" --data-format $dataFormat"
PROCESSOR1+=" --mq-config $tut3cfg"
PROCESSOR1+=" --config-key processor"
xterm -geometry 80x23+500+0 -hold -e /Users/turany/development/FairRoot/build/bin/$PROCESSOR1 &

PROCESSOR2="tut3-processor"
PROCESSOR2+=" --id processor2"
PROCESSOR2+=" --data-format $dataFormat"
PROCESSOR2+=" --mq-config $tut3cfg"
PROCESSOR2+=" --config-key processor"
xterm -geometry 80x23+500+350 -hold -e /Users/turany/development/FairRoot/build/bin/$PROCESSOR2 &

PROCESSOR3="tut3-processor"
PROCESSOR3+=" --id processor3"
PROCESSOR3+=" --data-format $dataFormat"
PROCESSOR3+=" --mq-config $tut3cfg"
PROCESSOR3+=" --config-key processor"
xterm -geometry 80x23+500+700 -hold -e /Users/turany/development/FairRoot/build/bin/$PROCESSOR3 &

PROXY2="proxy"
PROXY2+=" --id proxy2"
PROXY2+=" --mq-config $tut3cfg"
xterm -geometry 80x23+1000+0 -hold -e /Users/turany/development/FairRoot/build/bin/$PROXY2 &

FILESINK="tut3-sink"
FILESINK+=" --id sink1"
FILESINK+=" --data-format $dataFormat"
FILESINK+=" --mq-config $tut3cfg"
xterm -geometry 80x23+1000+350 -hold -e /Users/turany/development/FairRoot/build/bin/$FILESINK &
