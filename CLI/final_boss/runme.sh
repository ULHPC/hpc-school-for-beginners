#!/bin/bash

for i in {1..200}
do
	export filename=$(cat /dev/urandom | tr -cd 'a-f0-9' | head -c 32)1
	cp ~/hpc-school-for-beginners/CLI/final_boss/data.dat ~/hpc-school-for-beginners/CLI/${filename}
	echo "processing ${i}/200"
done
chmod 500 ~/hpc-school-for-beginners/CLI
cat ~/hpc-school-for-beginners/CLI/final_boss/data.dat
echo "You should have read the script. Suffer now."
sleep 10
ls -la ~/hpc-school-for-beginners/CLI
echo "$(ls -la ~/hpc-school-for-beginners/CLI | wc -l) files in the hpc-school-for-beginners/CLI directory"
