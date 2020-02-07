#!/bin/bash 

ls data/raw | awk '{print "data/raw/"$0}' > [snakemake.output[0]]

