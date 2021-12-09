#!/bin/bash
set -eo pipefail

voice_directory=$1 # e.g. /usr/local/src/voice_alfur

# Finish off the clunits model
cd $voice_directory/builds_clunits

# Find the most recent build - grep pattern matches timestamp, tail picks most recent entry
newest=`ls -ltr | grep -P "\d{4}-\d{2}-\d{2}_\d{2}-\d{2}-\d{2}"  | awk '{print$9}' | tail -1`
cd $newest


export FLITEDIR=/usr/local/src/flite
$FLITEDIR/bin/setup_flite

./bin/build_flite lpc
./bin/build_flite mcep
./bin/build_flite sts
./bin/build_flite idx
cd flite; make