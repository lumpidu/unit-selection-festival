#!/bin/bash
set -eo pipefail

voice_directory=$1 # e.g. /usr/local/src/voice_alfur

FESTIVALDIR=/usr/local/src/festival

dir_path=$(dirname $(realpath $0))

voice_name=$(basename $voice_directory)
#Create directory for tts outputs if not present
[ ! -d /outputs/$voice_name ] && mkdir /outputs/$voice_name

cd $voice_directory/builds

# Find the most recent build - grep pattern matches timestamp, tail picks most recent entry
newest=`ls -ltr | grep -P "\d{4}-\d{2}-\d{2}_\d{2}-\d{2}-\d{2}"  | awk '{print$9}' | tail -1`
cd $newest

# Uses same timestamp as voice builds
mkdir /outputs/$voice_name/$newest

IFS=$'\t'
while read -r utt_id line; do
    echo ${id}.wav
    echo ${line}
    echo $line | $FESTIVALDIR/bin/text2wave -eval festvox/lvl_is_v0_cg.scm -eval '(voice_lvl_is_v0_cg)' -o /outputs/$voice_name/$timestamp/${utt_id}.wav
done < ${dir_path}/test_sentences.txt
