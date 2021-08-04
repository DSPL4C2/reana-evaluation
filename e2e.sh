#!/bin/bash

spl=$1
n_evolutions=$2
n_iterations=$3

EVAL_DIR=/reana-evaluation
ANALYSIS_DIR=/reana-data

bash "$EVAL_DIR/evolutionObliviousAnalysis.sh" "$spl" "$n_evolutions" "$n_iterations"
bash "$EVAL_DIR/evolutionAwareAnalysis.sh" "$spl" "$n_evolutions" "$n_iterations"

cp -r $EVAL_DIR/Analysis/logs/data $ANALYSIS_DIR/datasets/data

python3 $ANALYSIS_DIR/analyse-cli.py
