#!/bin/bash
set -eo pipefail

voice_directory=$1 # e.g. /usr/local/src/voice_alfur


timestamp=$(date +%Y-%m-%d_%H-%M-%S)

mkdir -p $voice_directory/builds/$timestamp
mkdir -p $voice_directory/builds_grapheme/$timestamp

cp -r /usr/local/src/voice/* ${voice_directory}/builds/$timestamp
cp -r /usr/local/src/voice/* ${voice_directory}/builds_grapheme/$timestamp