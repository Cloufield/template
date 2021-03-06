#!/bin/bash
#$ -S /bin/bash
#$ -cwd
#$ -o temp
#$ -e temp
#$ -q '!mjobs_rerun.q' 
#$ -l mem_req=3G,s_vmem=3G 
#$ -pe def_slot 1

export PATH=~/tools/bin:$PATH
export OMP_NUM_THREADS=1
echo "job id:$JOB_ID"
echo "job name:$JOB_NAME"

du -h --max-depth=1 ~/ > disk_usage.txt
hauq >> disk_usage.txt
gu >> disk_usage.txt
