# Interactive jobs

## Exercise 1
`si -c8 -t60 --reservation=school-interactive`

## Exercise 2
`si -c32 -t120 --reservation=school-interactive`

**Remark:** AION compute nodes have 2G per core (128 cores, 256G of RAM)

## Exercise 3
**Q1:** can you book the same amount of cores on an IRIS CPU node than the answer of exercice 2? 
**Solution:** no, IRIS CPU nodes only have 28 cores

**Q2:** How much cores would you have to request on a IRIS CPU node to have 64G of RAM?
**Solution:** 14 cores, each cores receives 4G on an IRIS CPU node (28 cores, 128G of RAM)

# Batch jobs

## Exercise 1
`sbatch batch-job/batch-job-launcher.sh`

## Exercise 2
`sbatch -J job1 -o job1.out -e job1.err batch-job/batch-job-launcher.sh`
`sbatch -J job2 -o job2.out -e job2.err batch-job/batch-job-launcher.sh`

or 

```Bash
for i in {1..5}; 
do 
	sbatch -J job${i}  -o job${i}.out -e job${i}.err batch-job/batch-job-launcher.sh 
done
```

## Exercise 3
`sbatch --mail-user your_email_address --mail-type FAIL,END batch-job/batch-job-launcher.sh`

