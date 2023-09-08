#!/bin/bash -l
#SBATCH -c 16
#SBATCH --time=0-00:05:00
#SBATCH -p batch
#SBATCH --reservation=day2

module load lang/Python/3

python my-script.py