#!/bin/bash

spl=$1
n_evolutions=$2
n_iterations=$3

./evolutionObliviousAnalysis.sh "$spl" "$n_evolutions" "$n_iterations"
./evolutionAwareAnalysis.sh "$spl" "$n_evolutions" "$n_iterations"


