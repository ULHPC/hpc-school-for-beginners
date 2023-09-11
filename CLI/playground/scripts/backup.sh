#!/bin/bash
filename=$(basename $1)
cp $1 ~/hpc-school-for-beginners/CLI/playground/backup/${filename}-$(date +%y%m%d-%H:%M).bak
