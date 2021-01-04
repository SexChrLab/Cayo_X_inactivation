import os

configfile: "GTEx_config.json"

rule all:
    input: #strip reads from orginal GTEx bam
        expand("strip_reads/{sample}/{sample}_xyalign.log", sample=config["dna"]),
        expand("strip_reads/{sample}/{sample}_xyalign.log", sample=config["rna"])

rule strip_reads:
    input:
        BAM = lambda wildcards: config[wildcards.sample]["GTEx_bam"]
    output:
        LOG = "strip_reads/{sample}/{sample}_xyalign.log"
    conda:
        "/scratch/tphung3/Cayo_x_inactivation/envs/xyalign.yml"
    params:
        DIR = "strip_reads/{sample}",
        SAMPLE_ID = "{sample}",
        cpus="4",
        xmx="4g",
        compression="3"
    shell:
        "xyalign --STRIP_READS --ref null --bam {input.BAM} --cpus {params.cpus} --xmx {params.xmx} --sample_id {params.SAMPLE_ID} --output_dir {params.DIR} --chromosomes ALL"
