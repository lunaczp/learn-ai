#!/bin/bash

#get real dir even from symlink
realDir=$(dirname "$(readlink -f "$0")")
file=${realDir}/run_hg_model.py
python3.11 $file "$@"