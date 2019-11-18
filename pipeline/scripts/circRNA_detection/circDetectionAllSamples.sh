#!/bin/bash
dataset=$1
reference_prefix=$2
output_dir=$3
mkdir -p $output_dir
while read line
do
sample=$(cut -f1 <<< $line)
totalRNAfastq=$(cut -f2 <<< $line)
bash circDetectionForSample.sh $sample $totalRNAfastq $reference_prefix $output_dir
echo $sample
echo $totalRNAfastq
done < $dataset

