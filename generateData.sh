#!/bin/bash

spl="BSN"
n_evolutions=10
n_iterations=10

./evolutionObliviousAnalysis.sh $spl $n_evolutions $n_iterations
./evolutionAwareAnalysis.sh $spl $n_evolutions $n_iterations


