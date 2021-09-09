#!/bin/bash
set -eo pipefail

voice_directory=$1 # e.g. /usr/local/src/voice_alfur

cd $voice_directory/builds

# Find the most recent build dir - grep pattern matches timestamp, tail picks most recent entry
timestamp=`ls -ltr | grep -P "\d{4}-\d{2}-\d{2}_\d{2}-\d{2}-\d{2}"  | awk '{print$9}' | tail -1`
cd $timestamp
# Do the thing
./bin/do_build build_prompts
./bin/do_build label
./bin/do_build build_utts



mkdir -p $voice_directory/builds_clunits/$timestamp
cd $voice_directory && cp -r $voice_directory/builds/$timestamp/* $voice_directory/builds_clunits/$timestamp
