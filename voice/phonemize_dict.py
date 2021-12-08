#!/usr/local/bin/python
import sys
# reads in a file like etc/txt.done.data
input_filename = sys.argv[1]
lexicon_path = sys.argv[2]
ipa_map_path = sys.argv[3]
output_filename = sys.argv[4]
if not input_filename:
    print("no input filename given!")
    exit(1)
if not lexicon_path:
    print("no lexicon path given!")
    exit(1)
if not ipa_map_path:
    print("no path for ipa map given!")
    exit(1)
if not output_filename:
    print("no output filename given!")
    exit(1)

lex_dict = {"_pause": "."}
output_lines = []

lex_file = open(lexicon_path)
# Read in the lexicon file
for line in lex_file.readlines():
    word, transcription = line.split("\t")
    lex_dict[word] = transcription.strip().split()

ipa_dict = {".": "."}
ipa_file = open(ipa_map_path)
for line in ipa_file.readlines():
    sampa, ipa, _ = line.split("\t")
    ipa_dict[sampa] = ipa

# Read in the prompt file
f_in = open(input_filename)
for line in f_in.readlines():
    _, sent_id, string_dirty = line.split(maxsplit=2)
    _, string_clean, _ = string_dirty.split(sep='"',)
    transcription_arr = []
    for word in string_clean.split():
        transcription_arr.append("".join(map(lambda x: ipa_dict[x], lex_dict[word])))
    transcription = " ".join(transcription_arr)
    output_lines.append('( ' + sent_id + ' "' + transcription + '" )\n')

f_out = open(output_filename, 'w')
f_out.writelines(output_lines)