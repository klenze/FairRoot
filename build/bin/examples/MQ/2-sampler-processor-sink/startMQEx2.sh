#!/bin/bash
ex2config="/Users/turany/development/FairRoot/build/bin/config/ex2-sampler-processor-sink.json"

SAMPLER="ex2-sampler"
SAMPLER+=" --id sampler1"
SAMPLER+=" --mq-config $ex2config"
xterm -geometry 80x23+0+0 -hold -e /Users/turany/development/FairRoot/build/bin/examples/MQ/2-sampler-processor-sink/$SAMPLER &

PROCESSOR1="ex2-processor"
PROCESSOR1+=" --id processor1"
PROCESSOR1+=" --mq-config $ex2config"
PROCESSOR1+=" --config-key processor"
xterm -geometry 80x23+500+0 -hold -e /Users/turany/development/FairRoot/build/bin/examples/MQ/2-sampler-processor-sink/$PROCESSOR1 &

PROCESSOR2="ex2-processor"
PROCESSOR2+=" --id processor2"
PROCESSOR2+=" --mq-config $ex2config"
PROCESSOR2+=" --config-key processor"
xterm -geometry 80x23+500+330 -hold -e /Users/turany/development/FairRoot/build/bin/examples/MQ/2-sampler-processor-sink/$PROCESSOR2 &

SINK="ex2-sink"
SINK+=" --id sink1"
SINK+=" --mq-config $ex2config"
xterm -geometry 80x23+1000+0 -hold -e /Users/turany/development/FairRoot/build/bin/examples/MQ/2-sampler-processor-sink/$SINK &
