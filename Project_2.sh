#!/bin/zsh

# #!/bin/bash could work too


conda activate base
conda create -n funtools
conda deactivate
conda activate funtools
conda install conda-forge::pyfiglet
pyfiglet Meltem
conda conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
conda install bioconda::bwa
conda install bioconda::blast 
conda install bioconda::samtools
conda install bioconda::bedtools 
conda install bioconda::spades
conda install bioconda::bcftools 
conda install bioconda::fastp 
conda install bioconda::multiqc



