#!/bin/bash
set -eo pipefail

voice_directory=$1 # e.g. /usr/local/src/voice_alfur

# Finish off the clunits model
cd $voice_directory/builds_grapheme

# Find the most recent build - grep pattern matches timestamp, tail picks most recent entry
newest=`ls -ltr | grep -P "\d{4}-\d{2}-\d{2}_\d{2}-\d{2}-\d{2}"  | awk '{print$9}' | tail -1`
cd $newest


export FLITEDIR=/flite
$FLITEDIR/bin/setup_flite

./bin/build_flite
cd flite; make
make voicedump