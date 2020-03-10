#!/bin/bash

L=$(smudgeplot.py cutoff {snakemake.input[0]} L)
U=$(smudgeplot.py cutoff {snakemake.input[0]} U)

echo $L $U # these need to be same values

# L should be like 20 - 200
# U should be like 500 - 3000

kmc_tools transform reports/kmc/{snakemake.params[0]}/kmer_counts \
-ci$L \
-cx$U dump \
-s reports/smudge/{snakemake.params[0]}/kmer_k21.dump

smudgeplot.py hetkmers \
-o reports/smudge/{snakemake.params[0]}/kmer_pairs < kmer_k21.dump \


smudgeplot.py plot reports/smudge/{snakemake.params[0]}/kmer_pairs_coverages.tsv
