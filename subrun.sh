#!/bin/bash
qsub -cwd -o temp -e tempe -q '!mjobs_rerun.q' -l mem_req=8G,s_vmem=8G ./run.sh ${i}

