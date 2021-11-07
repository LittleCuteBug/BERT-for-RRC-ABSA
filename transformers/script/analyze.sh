#!/bin/bash

GPU=1

. ~/anaconda3/etc/profile.d/conda.sh
conda activate BERT

export CUDA_VISIBLE_DEVICES=${GPU}

export PYTHONPATH="${PYTHONPATH}:./"

rm -rf ./aruns/*

python src/analyze.py
