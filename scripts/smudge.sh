#!/bin/bash

L=$(smudgeplot.py cutoff reports/kmc/Mhaplanaria/kmer_k21.hist L)
U=$(smudgeplot.py cutoff reports/kmc/Mhaplanaria/kmer_k21.hist U)

echo $L $U # these need to be same values

# L should be like 20 - 200
# U should be like 500 - 3000

kmc_tools transform reports/kmc/Mhaplanaria/kmer_counts \
-ci$L \
-cx$U dump \
-s reports/smudge/Mhaplanaria/kmer_k21.dump

smudgeplot.py hetkmers \
-o reports/smudge/Mhaplanaria/kmer_pairs < kmer_k21.dump \


smudgeplot.py plot reports/smudge/Mhaplanaria/kmer_pairs_coverages.tsv
