#!/bin/bash -l
#SBATCH -c 1
#SBATCH --time=0-00:05:00
#SBATCH -p batch
#SBATCH --reservation=school-batch

for i in {1..180}
do 
	echo $i
	sleep 1
done