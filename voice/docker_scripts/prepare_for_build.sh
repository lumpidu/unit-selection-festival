#!/bin/bash
voice_directory=$1 # e.g. /usr/local/src/voice_alfur



cd $voice_directory/builds
# Find the most recent build dir - grep pattern matches timestamp, tail picks most recent entry
timestamp=`ls -ltr | grep -P "\d{4}-\d{2}-\d{2}_\d{2}-\d{2}-\d{2}"  | awk '{print$9}' | tail -1`
cd $timestamp

FESTVOXDIR=/usr/local/src/festvox

# Make some dirs we need
$FESTVOXDIR/src/general/make_dirs
DATADIR=$2
NUM_UTTS=${4:-1000}
# Set up the prompts that we will train on.
# ---

# Create transcriptions for everything
python3 normalize.py $DATADIR/index.tsv txt.complete.data --scm

# Filter out prompts with numbers or unsupported letters (c, w, q and z)
grep -v '"[^"]*[0-9cwqz]' txt.complete.data > txt.nonum.data

head -n $NUM_UTTS txt.nonum.data > etc/txt.done.data

# Create a lexicon

#Create list of all words in prompts - skipping the special _pause token
python3 normalize.py $DATADIR/index.tsv "-" | grep -o "[^ ]*" | sort | uniq | tail -n+2 > vocabulary.txt


G2P_MODEL_DIR=/app/fairseq_g2p python3 f_g2p.py --model $3 --apply vocabulary.txt > lexicon.txt

# TODO: NOTE this might not be needed anymore since x-sampa already are ascii
# readable phonemes
# Create a compiled lexicon from text lexicon
python3 build_lexicon.py sampa-map.tsv lexicon.txt festvox/lexicon.scm

# Power normalize and format wavs (16kHz, 16bit)
# bin/get_wavs $DATADIR/audio/*.wav
awk -v data_dir=$DATADIR '{print data_dir"/audio/"$2".wav"}' etc/txt.done.data | xargs bin/get_wavs

# Add random noise to audio (see script for more info)
bin/add_noise etc/txt.done.data

# This is needed to accommodate for the language-specific feature set
cp festival/clunits/mcep.desc festival/clunits/mcep.desc-backup
cp festival/clunits/mceptraj.desc festival/clunits/mceptraj.desc-backup
cp festival/dur/etc/dur.feats festival/dur/etc/dur.feats-backup
cp festival/dur/etc/statedur.feats festival/dur/etc/statedur.feats-backup


$FESTVOXDIR/src/prosody/setup_prosody
$FESTVOXDIR/src/clustergen/setup_cg lvl is v0

# This is needed to accommodate for the language-specific feature set
mv festival/clunits/mcep.desc-backup festival/clunits/mcep.desc
mv festival/clunits/mceptraj.desc-backup festival/clunits/mceptraj.desc
mv festival/dur/etc/dur.feats-backup festival/dur/etc/dur.feats
mv festival/dur/etc/statedur.feats-backup festival/dur/etc/statedur.feats
