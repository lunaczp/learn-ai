#/bin/bash
# build ollama

#get 4 arguments
# $1: hgModel
# $2: hgModelName
# $3: ollamaModel
# $4: ollamaModelfile
if [ $# -ne 4 ]; then
    echo "Usage: $0 hgModel hgModelName ollamaModel ollamaModelfile"
    exit 1
fi

hgModel=$1
hgModelName=$2
ollamaModel=$3
ollamaModelfile=$4

echo "hgModel: $hgModel"
echo "hgModelName: $hgModelName"
echo "ollamaModel: $ollamaModel"
echo "ollamaModelfile: $ollamaModelfile"

wkdir=/Users/`whoami`/models/$ollamaModel
if [ ! -d $wkdir ]; then
    mkdir -p $wkdir
fi

cd $wkdir
echo "Current directory: `pwd`"

#test if exists
if [ -f $hgModelName ]; then
    echo "Model $hgModelName already exists, skip downloading."
else
    huggingface-cli  download $hgModel $hgModelName --local-dir $wkdir
fi


#build
ollama create -f $ollamaModelfile $ollamaModel

#push
ollama push $ollamaModel