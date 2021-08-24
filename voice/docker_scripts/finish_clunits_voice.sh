#!/bin/bash

voice_directory=$1 # e.g. /usr/local/src/voice_alfur

# Finish off the clunits model
cd $voice_directory/builds_clunits

# Find the most recent build - grep pattern matches timestamp, tail picks most recent entry
newest=`ls -ltr | grep -P "\d{4}-\d{2}-\d{2}_\d{2}-\d{2}-\d{2}"  | awk '{print$9}' | tail -1`
cd $newest

./bin/do_build do_pm
./bin/do_build do_mcep
./bin/do_build build_clunits

