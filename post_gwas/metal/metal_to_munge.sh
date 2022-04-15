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

inputPrefix= 
#MarkerName      Allele1 Allele2 Freq1   FreqSE  MinFreq MaxFreq Effect  StdErr  P-value Direction       HetISq  HetChiSq        HetDf   HetPVal TotalSampleSize

echo "SNP	A2	A1	FRQ	BETA	SE	P	N" >${inputPrefix}.toformat.tsv
cat ./METAANALYSIS1.TBL | awk -v OFS="\t" 'NR>1{print $1,toupper($2),toupper($3),$4,$8,$9,$10,$16}' >> ${inputPrefix}.toformat.tsv
