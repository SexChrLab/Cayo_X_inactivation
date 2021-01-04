## 01_macaque_data_processing
1. Processing of DNAseq and RNAseq
- Snakefile: `Snakefile`
- Config file: `cayo_config.json`)
2. Extract stats for hard filter: 
- Snakefile: `extract_stats_from_vcfs.snakefile`
- Config file: `extract_stats_from_vcfs_config.json`

## 02_asereadcounter
1. Run GATK ASEReadCounter
- Snakefile: `asereadcounter.snakefile`
- Config file: `cayo_config.json`
2. Post GATK ASEReadCounter processing
- Snakefile: `post_asereadcounter_processing.snakefile`
- Config file: `post_asereadcounter_processing_config.json`

## 03_GTEx
- Download GTEx data

## 04_find_comparable_chr_to_chrX
- Goal: find a chromosome (chr1-chr20) in macaque that is most comparable to the X chromosome, as measured by the total number of basepairs in coding regions

1. Download the cds fasta file
  ```
  wget ftp://ftp.ensembl.org/pub/release-87/fasta/macaca_mulatta/cds/Macaca_mulatta.Mmul_8.0.1.cds.all.fa.gz
  ```

  - Unzip the file
    ```
    gunzip Macaca_mulatta.Mmul_8.0.1.cds.all.fa.gz
    ```
  - The header of this file looks like this:
    ```
    >ENSMMUT00000038284.2 cds chromosome:Mmul_8.0.1:MT:3259:4213:1 gene:ENSMMUG00000028699.2 gene_biotype:protein_coding transcript_biotype:protein_coding
    ```
    - The chromosome is `MT`.
    - The position is `3259:4213`. In order to convert the positions to BED file format, it would start at `3259` and ends at `4214`.
2. Write a Python script to parse the cds fasta file into BED file format
  ```
  python convert_cds_fasta_to_bed.py
  ```

3. To count the number of genic base pair for each chromosome, run the script:
  ```
  python /agavescratch/tphung3/Cayo_x_inactivation/find_comparable_chr_to_chrX/scripts/count_number_genic_bp_in_chr.py
  ```
- Output:
  ```
  chr18 55604623
  chr19 56029358
  chr17 61559815
  chr20 74698323
  chr13 87181320
  chr10 91498088
  chrX 93797534
  chr16 95784570
  chr15 98437362
  chr8 110035000
  chr12 119842721
  chr14 122897431
  chr11 128322779
  chr6 132005425
  chr9 132183690
  chr4 140245589
  chr5 140430278
  chr3 170822357
  chr7 177498928
  chr2 190721117
  chr1 214952741
  ```
- Therefore, we will choose chr16 to compare with chrX and chr10 and chr16 for autosome to autosome comparison.

## 05_compare_X_A
1. Compute mean and median ratio for each chromosome separately
  1. Macaques: R script `compute_mean_median_ratio_all_chr_macaques.R` (`run_compute_mean_median_ratio_all_chr_macaques.sh`)

## 06_analyze_skewed_variants
* We want to analyze variants that are skewed: allele balance is between 0.8 and 1 and allele balance equal to 1
* Constrained to coding regions only
1. Download the gene annotation for rheMac8 and generate bed files
  1. Download the cds fasta file:
    ```
    /scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/data/
    wget ftp://ftp.ensembl.org/pub/release-87/fasta/macaca_mulatta/cds/Macaca_mulatta.Mmul_8.0.1.cds.all.fa.gz
    gunzip Macaca_mulatta.Mmul_8.0.1.cds.all.fa.gz
  - The header of this file looks like this:
    ```
    >ENSMMUT00000038280.2 cds chromosome:Mmul_8.0.1:MT:4421:5462:1 gene:ENSMMUG00000028695.2 gene_biotype:protein_coding transcript_biotype:protein_coding gene_symbol:ND2 description:NADH dehydrogenase subunit 2 (mitochondrion)  [Source:RefSeq peptide;Acc:YP_026105]
    ```
    - The chromosome is `MT`.
    - The positionis `4421:5462`. In order to convert the positions to BED file format, it would start at `4421` and ends at `5463`.
  - BED file format: chr, start, end, transcript_name, gene_name
  2. Write a Python script to parse the cds fasta file into BED file format
    ```
    python convert_cds_fasta_to_bed.py
    ```
2. Convert the unphased asereadcounter data to bed file format. See rule `convert_unphased_autosomes_data_to_bed` (line 37) in `analyze_skewed_variants.snakefile`
3. Use bedtools intersect to (1) keep only variants in coding regions and (2) figure out where on the genes the variants fall into. See rule `bedtools_intersect_unphased_data` (line 49) in `analyze_skewed_variants.snakefile`
4. Because in the cds fasta file, one transcript/gene has multiple start and end coordinates, one variant intersected with multile transcripts. Therefore we need to remove these duplicates. To do this, see rule `remove_duplicates` (line 60) in `analyze_skewed_variants.snakefile`
5. Compute allele balance for variants in coding regions. See rule `compute_allele_balance` (line 72) in `analyze_skewed_variants.snakefile`
6. Tabulate statistics. See rule `tabulate_statistics` (line 84) in `analyze_skewed_variants.snakefile`

## 07_coding_regions
* Document the analysis of variants in coding regions only

### Macaque
1. Download the cds fasta file
  ```
  wget ftp://ftp.ensembl.org/pub/release-87/fasta/macaca_mulatta/cds/Macaca_mulatta.Mmul_8.0.1.cds.all.fa.gz
  ```

  - Unzip the file
  - The header of this file looks like this:
    ```
    >ENSMMUT00000038284.2 cds chromosome:Mmul_8.0.1:MT:3259:4213:1 gene:ENSMMUG00000028699.2 gene_biotype:protein_coding transcript_biotype:protein_coding
    ```
    - The chromosome is `MT`.
    - The positionis `3259:4213`. In order to convert the positions to BED file format, it would start at `3259` and ends at `4214`.
2. Write a Python script to parse the cds fasta file into BED file format
  ```
  python convert_cds_fasta_to_bed.py
  ```
3. Write a Python script to convert the phased chrX data to bed file format:
  - Example:
    ```
    python ~/scratch/Cayo_x_inactivation/coding_regions/scripts/convert_phased_data_to_bed.py --phased_chrX_data /agavescratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT101159/PT101159_hap1_heart_hardfilter.tsv --outfile /agavescratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT101159/PT101159_hap1_heart_hardfilter.bed
    ```
  - See the rule `convert_phased_data_to_bed` from snakefile `coding_regions.snakefile`.

### Human
1. Previously for Kimberly, I have already converted the GTF file in human to BED file format.
  1. The bed file format is located here: `/agavescratch/tphung3/PlacentaSexDiff/Kimberly/ASE/gencode.v29.annotation.bed`.
  2. See the README, located here: `/agavescratch/tphung3/PlacentaSexDiff/Kimberly/ASE/README.md`.

## 10_gene_analysis
1. Run the Python script `convert_gene_coordinates_to_bed.py`.
2. Run the Python script `convert_asereadcounter_to_bed.py`. Use the bash script `run_convert_asereadcounter_to_bed.sh`.
3. Bedtools intersect. Use the bash script `find_asereadcounter_variants_on_which_gene.sh`.
4. Compute allele balance for each gene. 

## 13_xist
- Analysis of the XIST
1. XIST coordinates in rhesus macaque (rheMac8)
  1. rheMac2_chrX:72942857–72975346 from the paper https://genome.cshlp.org/content/21/6/850.full.html
  2. Lift over from rheMac2 to rheMac8
  3. File is xist_rhemac8_coordinates.bed
2. Convert asereadcounter to bed file format
  1. Use the Python script `convert_asereadcounter_to_bed.py`

## Plotting scripts for manuscript
- Plotting scripts are at: `/scratch/tphung3/Cayo_x_inactivation/11_plotting_scripts/`
- Plots are at: `/scratch/tphung3/Cayo_x_inactivation/12_manuscript_plots/`
### Main text figures
1. Figure 2A:
  1. y-axis is allele balance
  2. x-axis is the violin plot of median allele balance across all individuals
  3. chr16 vs chrX
  4. macaques
  5. Script: `figure_2a_violin_allindividuals_alltissues_chr16_vs_chrX_macaques.R`
  6. Output plot: `figure_2a_violin_allindividuals_alltissues_chr16_vs_chrX_macaques.png`
2. Figure 3A:
  1. y-axis is allele balance
  2. x-axis is macaque individuals
  3. Each point is the median allele balance for each tissue
  4. Script: `figure_3a_median_allelebalance_allindividuals_alltissues_chrX_unphased_macaques.R`
  5. Output plot: `figure_3a_median_allelebalance_allindividuals_alltissues_chrX_unphased_macaques.png`
### Supplementary figures
1. Figure S2A: y-axis is allele balance and x-axis is the violin plot of median allele balance across all individuals for each tissue. This is for all chromosomes on the autosomes and for macaques
  1. Script: `figure_s2a_violin_allindividuals_alltissues_autosomes_macaques.R`
  2. Output plot: `figure_s2a_violin_allindividuals_alltissues_autosomes_macaques.png`
2. Figure S3:
  1. y-axis is allele balance
  2. x-axis is the violin plot of median allele balance across all individuals
  3. chr16 vs chr10
  4. macaques
  5. Script: `figure_s3_violin_allindividuals_alltissues_chr10_vs_chr16_macaques.R`
  6. Output plot: `figure_s3_violin_allindividuals_alltissues_chr10_vs_chr16_macaques.png`
3. Figure S6:
  1. For each individual, for each tisue, plot:
    1. y-axis is allele balance
    2. x-axis is positions on chr16 and chrX
  2. Script: `figure_s6_allelebalance_across_chr16_chrX_macaques.R`
  3. Output plot: `figure_s6_allelebalance_across_chr16_chrX_macaque_PT102842.png`
