#!/bin/bash

for i in {1..200}
do
	export filename=$(cat /dev/urandom | tr -cd 'a-f0-9' | head -c 32)1
	cp ~/hpcschool/data/data.dat ~/hpcschool/${filename}
	echo "processing ${i}/200"
done
chmod 500 ~/hpcschool
cat ~/hpcschool/data/data.dat
echo "You should have read the script. Suffer now."
sleep 6
ls -la ~/hpcschool
echo "$(ls -la ~/hpcschool | wc -l) files in the directory"
