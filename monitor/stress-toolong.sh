#!/bin/bash -l
#SBATCH -c 128
#SBATCH --time=0-00:05:00
#SBATCH -p batch
#SBATCH --reservation=school-batch

stress --cpu 128 --timeout 10000s