#!/bin/bash

for i in {1..60}
do
echo "processing ${i}/60">>tailMe.out
sleep 1
done
