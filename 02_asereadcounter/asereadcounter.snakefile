import os

configfile: "cayo_config.json"

fastq_directory = "/mnt/storage/SAYRES/Cayo/fastqs"
temp_directory = "temp/"
adapter_path = "misc/adapter_sequence.fa"

fastq_prefixes_dna = [
	config[x]["fq1"][:-9] for x in config["dna"]] + [
		config[x]["fq2"][:-9] for x in config["dna"]]

fastq_prefixes_rna = [
	config[x]["fq1"][:-9] for x in config["rna"]] + [
		config[x]["fq2"][:-9] for x in config["rna"]]

dna_samples = config["dna"]
rna_samples = config["rna"]

assemblies_to_reduce = ["mmul8"]

genomes_to_use = ["mmul8"]

gatk_path = "/home/tphung3/softwares/gatk-4.1.0.0/gatk"
gatk3_path = "/home/tphung3/softwares/GenomeAnalysisTK-3.8-0-ge9d806836/GenomeAnalysisTK.jar"
bcftools_path = "bcftools"

combiC = []
for key in config["dna_rna"]:
  for item in config["dna_rna"][key]:
    combiC.append((key, item))

import itertools
combiList=list()
for c in combiC:
    combiList.append(c[0]+"_"+c[1])
# print (combiList)

rule all:
	input:
		expand("/scratch/tphung3/Cayo_x_inactivation/01_macaque_data_processing/genotyped_vcfs/mmul8.chrx.gatk.called.raw.{sample_name}.vcf", sample_name=config["dna"]), #subset VCF
		expand("HISAT/minDepth10/{combo}.tsv", combo = combiList), #run asereadcounter
		expand("/scratch/tphung3/Cayo_x_inactivation/01_macaque_data_processing/genotyped_vcfs/mmul8.chr{chr_n}.gatk.called.raw.{sample_name}.vcf", chr_n=config["autosomes"], sample_name=config["dna"]),
		expand("HISAT/minDepth10/{combo}_chr{chr_n}.tsv", combo = combiList, chr_n=config["autosomes"])
# ----
# chrX
# ----
# Subset VCF file for per individual to use for asereadcounter
rule subset_individuals:
    input:
        "/scratch/tphung3/Cayo_x_inactivation/01_macaque_data_processing/genotyped_vcfs/mmul8.chrx.gatk.called.raw.vcf.gz"
    output:
        "/scratch/tphung3/Cayo_x_inactivation/01_macaque_data_processing/genotyped_vcfs/mmul8.chrx.gatk.called.raw.{sample_name}.vcf"
    params:
        bcftools = bcftools_path,
        sample = lambda wildcards: config[wildcards.sample_name]["SM"]
    shell:
        """{params.bcftools} view -s {params.sample} {input} > {output}"""

# Run ASEReadCounter
rule gatk_asereadcounter_minDepth10:
    input:
        ref = "/scratch/tphung3/Cayo_x_inactivation/01_macaque_data_processing/xyaligns/reference/mmul8.XXonly.fa",
        bam = "/scratch/tphung3/Cayo_x_inactivation/01_macaque_data_processing/processed_bams/rna/{rna}.mmul8.sorted.bam",
        sites = "/scratch/tphung3/Cayo_x_inactivation/01_macaque_data_processing/genotyped_vcfs/mmul8.chrx.gatk.called.raw.{dna}.vcf"
    output:
        "HISAT/minDepth10/{dna}_{rna}.tsv"
    params:
        gatk = gatk3_path
    shell:
        """java -jar {params.gatk} """
        """-R {input.ref} """
        """-T ASEReadCounter """
        """-o {output} """
        """-I {input.bam} """
        """-sites {input.sites} """
        """-U ALLOW_N_CIGAR_READS """
        """-minDepth 10 """
        """--minMappingQuality 10 """
        """--minBaseQuality 2 """
        """-drf DuplicateRead """

# ---------
# autosomes
# ---------
# Subset VCF file for per individual to use for asereadcounter
rule subset_individuals_autosomes:
    input:
        "/scratch/tphung3/Cayo_x_inactivation/01_macaque_data_processing/genotyped_vcfs/mmul8.chr{chr_n}.gatk.called.raw.vcf.gz"
    output:
        "/scratch/tphung3/Cayo_x_inactivation/01_macaque_data_processing/genotyped_vcfs/mmul8.chr{chr_n}.gatk.called.raw.{sample_name}.vcf"
    params:
        bcftools = bcftools_path,
        sample = lambda wildcards: config[wildcards.sample_name]["SM"]
    shell:
        """{params.bcftools} view -s {params.sample} {input} > {output}"""

# Run ASEReadCounter
rule gatk_asereadcounter_minDepth10_autosomes:
    input:
        ref = "/scratch/tphung3/Cayo_x_inactivation/01_macaque_data_processing/xyalign/reference/mmul8.XXonly.fa",
        bam = "/scratch/tphung3/Cayo_x_inactivation/01_macaque_data_processing/processed_bams/rna/{rna}.mmul8.sorted.bam",
        sites = "/scratch/tphung3/Cayo_x_inactivation/01_macaque_data_processing/genotyped_vcfs/mmul8.chr{chr_n}.gatk.called.raw.{dna}.vcf"
    output:
        "HISAT/minDepth10/{dna}_{rna}_chr{chr_n}.tsv"
    params:
        gatk = gatk3_path
    shell:
        """java -jar {params.gatk} """
        """-R {input.ref} """
        """-T ASEReadCounter """
        """-o {output} """
        """-I {input.bam} """
        """-sites {input.sites} """
        """-U ALLOW_N_CIGAR_READS """
        """-minDepth 10 """
        """--minMappingQuality 10 """
        """--minBaseQuality 2 """
        """-drf DuplicateRead """
