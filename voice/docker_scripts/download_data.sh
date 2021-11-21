#!/bin/bash

set -euxo pipefail
data_dir=$1
voice=$2
mkdir -p $data_dir
cd $data_dir

if [ $voice = "alfur" ]
then
    if [ ! -d "$data_dir/alfur" ]
    then
        curl -sSk "https://repository.clarin.is/repository/xmlui/bitstream/handle/20.500.12537/104/alfur.zip?sequence=5&isAllowed=y" -o alfur.zip
        unzip alfur.zip
        mv f alfur
        rm alfur.zip
    else
        echo "Alfur data is already present in $data_dir/alfur"
    fi
elif [ $voice = "dilja" ]
then
    if [ ! -d "$data_dir/dilja" ]
    then
        curl -sSk "https://repository.clarin.is/repository/xmlui/bitstream/handle/20.500.12537/104/dilja.zip?sequence=8&isAllowed=y" -o dilja.zip
        unzip dilja.zip
        mv c dilja
        rm dilja.zip
    else
        echo "Dilja data is already present in $data_dir/dilja"
    fi
else
    echo "$2 is not a valid voice identifier. Please select a valid voice."
fi