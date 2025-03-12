#!/bin/bash --login
#SBATCH --job-name=affinity
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --exclusive
#SBATCH --partition=batch
#SBATCH --qos=normal
#SBATCH --time=0-00:05:00
#SBATCH --output=%x-%j.out
#SBATCH --error=%x-%j.err

srun --cpu-bind=verbose,mask_cpu:0xf,0xf0000000000000000 --ntasks=2 stress --cpu 4 --timeout 180s
