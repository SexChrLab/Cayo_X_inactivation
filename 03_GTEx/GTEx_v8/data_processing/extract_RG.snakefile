import os

# This snakefile extracts read groups from the bam file
configfile: "GTEx_config.json"

rule all:
    input:
        expand("read_groups/dna/{sample}_RG.txt", sample=config["dna"]),
        expand("read_groups/rna/{sample}_RG.txt", sample=config["rna"])

rule extract_readgroups_dna:
    input:
        BAM = lambda wildcards: config[wildcards.sample]["GTEx_bam"]
    output:
        "read_groups/dna/{sample}_RG.txt"
    shell:
        """
        samtools view -H {input.BAM} | grep "^@RG" > {output}
        """

rule extract_readgroups_rna:
    input:
        BAM = lambda wildcards: config[wildcards.sample]["GTEx_bam"]
    output:
        "read_groups/rna/{sample}_RG.txt"
    shell:
        """
        samtools view -H {input.BAM} | grep "^@RG" > {output}
        """
