#!/bin/bash -l
#SBATCH -c 128
#SBATCH --time=0-00:05:00
#SBATCH -p batch
#SBATCH --reservation=day2

stress --cpu 128 --timeout 180s