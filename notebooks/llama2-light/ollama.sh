#/bin/bash

fileDir=$(realpath $(dirname "$0"))

hgModel=LightXXXXX/llama-2-7b-light-gguf
hgModelName=llama-2-7b-light-Q4_K_M.gguf
ollamaModel=lightfivex/llama2-light

ollamaModelfile=${fileDir}/ollama_Modelfile
ollamaScript=${fileDir}/../../ollama.sh

# build ollama
${ollamaScript} ${hgModel} ${hgModelName} ${ollamaModel} ${ollamaModelfile}