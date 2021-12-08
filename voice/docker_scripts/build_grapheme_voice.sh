#!/bin/bash
set -euxo pipefail

voice_directory=$1 # e.g. /usr/local/src/voice_alfur

cd $voice_directory/builds_grapheme

timestamp=`ls -ltr | grep -P "\d{4}-\d{2}-\d{2}_\d{2}-\d{2}-\d{2}"  | awk '{print$9}' | tail -1`
cd $timestamp

ESTDIR=/usr/local/src/speech_tools
FESTVOXDIR=/usr/local/src/festvox
SPTKDIR=/usr/local/src/SPTK

# $FESTVOXDIR/src/grapheme/make_cg_grapheme

# # Now you can build a voice as before. Firsty build the prompts and label the data.
# ./bin/do_build build_prompts etc/txt.done.data
# ./bin/do_build label etc/txt.done.data
# ./bin/do_clustergen parallel build_utts etc/txt.done.data
# ./bin/do_clustergen generate_statenames
# ./bin/do_clustergen generate_filters
# # Then do feature extraction
# ./bin/do_clustergen parallel f0_v_sptk
# # ./bin/do_clustergen parallel f0
# ./bin/do_clustergen parallel mcep_sptk
# # ./bin/do_clustergen parallel mcep
# ./bin/do_clustergen parallel combine_coeffs_v
# Build the models
./bin/traintest etc/txt.done.data
./bin/do_clustergen parallel cluster etc/txt.done.data.train
./bin/do_clustergen dur etc/txt.done.data.train

# # And generate some test examples, the first to give MCD and F0D objective measures, the second to generate standard tts output
./bin/do_clustergen cg_test resynth cgp etc/txt.done.data.test
./bin/do_clustergen cg_test tts tts etc/txt.done.data.test