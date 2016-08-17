#!/bin/bash

MAXINDEX="--max-index -1"
TRANSPORT="--transport zeromq"
VERBOSE="--verbose INFO"

while [[ $# > 1 ]]
do
key="$1"

case $key in
    -m|--max-index)
    MAXINDEX="--max-index $2"
    shift
    ;;
    -t|--transport)
    TRANSPORT="--transport $2"
    shift
    ;;
    -v|--verbose)
    VERBOSE="--verbose $2"
    shift
    ;;
esac
shift 
done


########################### Define some variables
# JSON file containing the configuration parameters of all FairMQ devices of this example
MQCONFIGFILE="/Users/turany/development/FairRoot/examples/MQ/9-PixelDetector/run/options/Pixel9MQConfig_Merger.json"
# ASCII and ROOT parameter files for the processor device
ROOTPARAM="/Users/turany/development/FairRoot/examples/MQ/9-PixelDetector/macros/pixel_TGeant3.params.root"
ASCIIPARAM="/Users/turany/development/FairRoot/examples/MQ/9-PixelDetector/param/pixel_digi.par"

# input file and branch for the sampler device
# READ FROM ASCII FILES
#SAMPLERTYPE="--sampler-type PixelDigiSource"
#INPUTFILE1="/Users/turany/development/FairRoot/examples/MQ/9-PixelDetector/macros/digis.p0.dat"
#INPUTFILE2="/Users/turany/development/FairRoot/examples/MQ/9-PixelDetector/macros/digis.p1.dat"
#INPUTFILE3="/Users/turany/development/FairRoot/examples/MQ/9-PixelDetector/macros/digis.p2.dat"
# READ FROM BINARY FILES
SAMPLERTYPE="--sampler-type PixelDigiBinSource"
INPUTFILE1="/Users/turany/development/FairRoot/examples/MQ/9-PixelDetector/macros/digisBin.p0.dat"
INPUTFILE2="/Users/turany/development/FairRoot/examples/MQ/9-PixelDetector/macros/digisBin.p1.dat"
INPUTFILE3="/Users/turany/development/FairRoot/examples/MQ/9-PixelDetector/macros/digisBin.p2.dat"

INPUTBRANCH="PixelDigis"

FAIRTASKNAME="--task-name PixelFindHits"

# output file for sink
OUTPUTFILE="/Users/turany/development/FairRoot/examples/MQ/9-PixelDetector/macros/MQ.pixel_TGeant3.hitsFromBinary.root"
OUTPUTCLASS="TClonesArray(PixelHit)"
OUTPUTBRANCH="PixelHits"
###########################



########################### Start the chain of the devices


########################## start Parameter server
SERVER="parmq-server $TRANSPORT"
SERVER+=" --id parmq-server --mq-config $MQCONFIGFILE"
SERVER+=" --first-input-name $ROOTPARAM --second-input-name $ASCIIPARAM --second-input-type ASCII"
xterm -geometry 80x25+0+700 -hold -e /Users/turany/development/FairRoot/build/bin/$SERVER &


########################## start SAMPLER
SAMPLER1="ex9-sampler $TRANSPORT"
SAMPLER1+=" --id sampler1 $SAMPLERTYPE --mq-config $MQCONFIGFILE"
SAMPLER1+=" --file-name $INPUTFILE1 --branch-name $INPUTBRANCH $MAXINDEX"
xterm -geometry 80x25+0+0 -hold -e /Users/turany/development/FairRoot/build/bin/examples/MQ/9-PixelDetector/$SAMPLER1 &

########################## start PROCESSORs
PROCESSOR1="ex9-processor $TRANSPORT"
PROCESSOR1+=" $VERBOSE"
PROCESSOR1+=" --id processor1 $FAIRTASKNAME --mq-config $MQCONFIGFILE"
#xterm +aw -geometry 100x27+800+0 -hold -e /Users/turany/development/FairRoot/build/bin/examples/MQ/9-PixelDetector/$PROCESSOR1 &
xterm -geometry 80x25+0+350 -hold -e /Users/turany/development/FairRoot/build/bin/examples/MQ/9-PixelDetector/$PROCESSOR1 &

########################## start SAMPLER
SAMPLER2="ex9-sampler $TRANSPORT"
SAMPLER2+=" --id sampler2 $SAMPLERTYPE --mq-config $MQCONFIGFILE"
SAMPLER2+=" --file-name $INPUTFILE2 --branch-name $INPUTBRANCH $MAXINDEX"
xterm -geometry 80x25+500+0 -hold -e /Users/turany/development/FairRoot/build/bin/examples/MQ/9-PixelDetector/$SAMPLER2 &

########################## start PROCESSORs
PROCESSOR2="ex9-processor $TRANSPORT"
PROCESSOR2+=" $VERBOSE"
PROCESSOR2+=" --id processor2 $FAIRTASKNAME --mq-config $MQCONFIGFILE"
xterm -geometry 80x25+500+350 -hold -e /Users/turany/development/FairRoot/build/bin/examples/MQ/9-PixelDetector/$PROCESSOR2 &

########################## start SAMPLER
SAMPLER3="ex9-sampler $TRANSPORT"
SAMPLER3+=" --id sampler3 $SAMPLERTYPE --mq-config $MQCONFIGFILE"
SAMPLER3+=" --file-name $INPUTFILE3 --branch-name $INPUTBRANCH $MAXINDEX"
xterm -geometry 80x25+1000+0 -hold -e /Users/turany/development/FairRoot/build/bin/examples/MQ/9-PixelDetector/$SAMPLER3 &

########################## start PROCESSORs
PROCESSOR3="ex9-processor $TRANSPORT"
PROCESSOR3+=" $VERBOSE"
PROCESSOR3+=" --id processor3 $FAIRTASKNAME --mq-config $MQCONFIGFILE"
xterm -geometry 80x25+1000+350 -hold -e /Users/turany/development/FairRoot/build/bin/examples/MQ/9-PixelDetector/$PROCESSOR3 &

########################## start MERGER
MERGER="ex9-merger $TRANSPORT"
MERGER+=" --id merger1 --mq-config $MQCONFIGFILE"
xterm +aw -geometry 80x25+500+700 -hold -e /Users/turany/development/FairRoot/build/bin/examples/MQ/9-PixelDetector/$MERGER &

########################## start FILESINK
FILESINK="ex9-sink $TRANSPORT"
FILESINK+=" --id sink1 --mq-config $MQCONFIGFILE"
FILESINK+=" --file-name $OUTPUTFILE --class-name $OUTPUTCLASS --branch-name $OUTPUTBRANCH"
xterm +aw -geometry 80x25+1000+700 -hold -e /Users/turany/development/FairRoot/build/bin/examples/MQ/9-PixelDetector/$FILESINK &


