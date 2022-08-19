#!/bin/bash
set -eo pipefail

voice_directory=$1 # e.g. /usr/local/src/voice_alfur


timestamp=$(date +%Y-%m-%d_%H-%M-%S)

# Remove all builds older than a month
unix_one_month_ago=$(date -d "-1 month" +%s)

for d in $voice_directory/builds/*/; do
    ts=`basename $d`
    ts_readable=`echo $ts | awk -F'[-_]' '{ print $1"-"$2"-"$3" "$4":"$5":"$6 }'`
    unix_ts=$(date -d "${ts_readable}" "+%s")
    if [ $unix_one_month_ago -ge $unix_ts ]; then rm -r $d; fi 
done

for d in $voice_directory/builds_clunits/*/; do
    ts=`basename $d`
    ts_readable=`echo $ts | awk -F'[-_]' '{ print $1"-"$2"-"$3" "$4":"$5":"$6 }'`
    unix_ts=$(date -d "${ts_readable}" "+%s")
    if [ $unix_one_month_ago -ge $unix_ts ]; then rm -r $d; fi 
done

for d in $voice_directory/builds_grapheme/*/; do
    ts=`basename $d`
    ts_readable=`echo $ts | awk -F'[-_]' '{ print $1"-"$2"-"$3" "$4":"$5":"$6 }'`
    unix_ts=$(date -d "${ts_readable}" "+%s")
    if [ $unix_one_month_ago -ge $unix_ts ]; then rm -r $d; fi 
done

mkdir -p $voice_directory/builds/$timestamp

cp -r /usr/local/src/voice/* ${voice_directory}/builds/$timestamp