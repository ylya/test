#!/bin/bash
ulimit -m 8192000;
while read file; do
base=$(basename "${file}")
baseno="${base%.*}"
echo "%Analysing - $baseno" >> resultsO.txt;
timeout 8s python oyente.py -b $file >> resultsO.txt;
done <<< "$(find /home/oyente/oyente/git_test/test/allFromDBCALL_0405_O -name '*.txt')"
