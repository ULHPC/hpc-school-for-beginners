#!/bin/bash --login
#SBATCH --job-name=affinity
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=128
#SBATCH --partition=batch
#SBATCH --qos=normal
#SBATCH --time=0-00:05:00
#SBATCH --output=%x-%j.out
#SBATCH --error=%x-%j.err

srun stress --cpu 128 --timeout 180s
