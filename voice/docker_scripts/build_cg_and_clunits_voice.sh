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
# cd $voice_directory/voice_clunits

# # Finish off the clunits model
# ./bin/do_build do_pm
# ./bin/do_build do_mcep
# ./bin/do_build build_clunits

# # Go back to the clustergen model
# cd $voice_directory/voice
# ./bin/do_clustergen parallel f0
# ./bin/do_clustergen parallel mcep
# ./bin/do_clustergen parallel voicing
# ./bin/do_clustergen parallel combine_coeffs_v

# ./bin/traintest etc/txt.done.data
# cp etc/txt.done.data etc/text.done.data.full
# cat etc/txt.done.data.train >etc/txt.done.data


# cp festival/clunits/mcep.desc festival/clunits/mcep.desc-backup
# cp festival/clunits/mceptraj.desc festival/clunits/mceptraj.desc-backup
# ./bin/do_clustergen generate_statenames
# mv festival/clunits/mcep.desc-backup festival/clunits/mcep.desc
# mv festival/clunits/mceptraj.desc-backup festival/clunits/mceptraj.desc
# ./bin/do_clustergen generate_filters
# ./bin/do_clustergen cluster
# ./bin/do_clustergen dur

