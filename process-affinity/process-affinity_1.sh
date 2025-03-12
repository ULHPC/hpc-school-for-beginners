#!/bin/bash --login
#SBATCH --job-name=affinity
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --cpus-per-task=4
#SBATCH --partition=batch
#SBATCH --qos=normal
#SBATCH --time=0-00:05:00
#SBATCH --output=%x-%j.out
#SBATCH --error=%x-%j.err

srun stress --cpu 4 --timeout 180s
