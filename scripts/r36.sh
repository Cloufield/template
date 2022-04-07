#!/bin/bash
#$ -S /bin/bash
export PATH=~/tools/bin:$PATH
export OMP_NUM_THREADS=1
echo "job id:$JOB_ID"
echo "job name:$JOB_NAME"
module use /usr/local/package/modulefiles/
module load R/3.6
