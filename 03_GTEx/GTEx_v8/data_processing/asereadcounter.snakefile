import os

configfile: "GTEx_config.json"

autosomes = ["1", "2", "3", "4", "5", "6", "7", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"]

gatk_path = "/home/tphung3/softwares/gatk-4.1.0.0/gatk"
gatk3_path = "/home/tphung3/softwares/GenomeAnalysisTK-3.8-0-ge9d806836/GenomeAnalysisTK.jar"

combiC = []
for key in config["dna_rna"]:
    for item in config["dna_rna"][key]:
        combiC.append((key, item))

import itertools
combiList=list()
for c in combiC:
    combiList.append(c[0]+"_"+c[1])

rule all:
    # --------------------------------------------
    # Date: 12/27/2019
    # Run ASEReadCounter for chr1-chr7, chr9-chr22
    input:
        expand("asereadcounter/HISAT/minDepth10/chr{chr}/{combo}_chr{chr}.tsv", combo=combiList, chr=autosomes)
    # End date 12/27/2019
    # --------------------------------------------
    input:
        expand("asereadcounter/HISAT/minDepth10/chr8/{combo}_chr8.tsv", combo=combiList)
    input:
        expand("asereadcounter/HISAT/minDepth10/chrX/{combo}_chrX.tsv", combo=combiList)

rule gatk_asereadcounter_minDepth10_chrX:
    input:
        ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
        bam = "processed_bams/rna/{rna}.GRCh38.p12.genome.XXonly.sorted.merged.bam",
        sites = "genotyped_vcfs/GRCh38.p12.genome.XXonly.chrX.gatk.called.raw.{dna}.vcf"
    output:
        "asereadcounter/HISAT/minDepth10/chrX/{dna}_{rna}_chrX.tsv"
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

rule gatk_asereadcounter_minDepth10_chr8:
    input:
        ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
        bam = "processed_bams/rna/{rna}.GRCh38.p12.genome.XXonly.sorted.merged.bam",
        sites = "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr8.gatk.called.raw.{dna}.vcf"
    output:
        "asereadcounter/HISAT/minDepth10/chr8/{dna}_{rna}_chr8.tsv"
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

# --------------------------------------------
# Date: 12/27/2019
# Run ASEReadCounter for chr1-chr7, chr9-chr22
# --------------------------------------------
rule gatk_asereadcounter_minDepth10_autosomes:
    input:
        ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
        bam = "processed_bams/rna/{rna}.GRCh38.p12.genome.XXonly.sorted.merged.bam",
        sites = "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.raw.{dna}.vcf"
    output:
        "asereadcounter/HISAT/minDepth10/chr{chr}/{dna}_{rna}_chr{chr}.tsv"
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
# End 12/27/2019
