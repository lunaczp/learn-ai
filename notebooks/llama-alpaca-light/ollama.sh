#/bin/bash

fileDir=$(realpath $(dirname "$0"))

hgModel=LightXXXXX/llama-7b-alpaca-light-gguf
hgModelName=llama-7b-alpaca-ight-Q4_K_M.gguf
ollamaModel=lightfivex/llama-alpaca-light

ollamaModelfile=${fileDir}/ollama_Modelfile
ollamaScript=${fileDir}/../../ollama.sh

# build ollama
${ollamaScript} ${hgModel} ${hgModelName} ${ollamaModel} ${ollamaModelfile}