#!/bin/bash

voice_directory=$1 # e.g. /usr/local/src/voice_alfur


timestamp=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p $voice_directory/builds/$timestamp

# [ -d ${voice_directory}/voice_prev ] && rm -r ${voice_directory}/voice_prev
# [ -d ${voice_directory}/voice ] && mv ${voice_directory}/voice ${voice_directory}/voice_prev
# [ ! -d ${voice_directory} ] && mkdir ${voice_directory}
cp -r /usr/local/src/voice/* ${voice_directory}/builds/$timestamp
