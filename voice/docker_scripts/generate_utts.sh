#!/bin/bash
voice_directory=$1 # e.g. /usr/local/src/voice_alfur

FESTIVALDIR=/usr/local/src/festival

dir_path=$(dirname $(realpath $0))

voice_name=$(basename $voice_directory)
#Create directory for tts outputs if not present
[ ! -d /outputs/$voice_name ] && mkdir /outputs/$voice_name

timestamp=$(date +%Y-%m-%d_%H-%M-%S)

mkdir /outputs/$voice_name/$timestamp

cd $voice_directory/voice
IFS=$'\t'
while read -r utt_id line; do
    echo ${id}.wav
    echo ${line}
    echo $line | $FESTIVALDIR/bin/text2wave -eval festvox/lvl_is_v0_cg.scm -eval '(voice_lvl_is_v0_cg)' -o /outputs/$voice_name/$timestamp/${utt_id}.wav
done < ${dir_path}/test_sentences.txt
