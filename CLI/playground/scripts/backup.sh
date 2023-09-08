#!/bin/bash
filename=$(basename $1)
cp $1 ~/git/hpc-school-for-beginners/CLI/playground/backup/${filename}-$(date +%y%m%d-%H:%M).bak
