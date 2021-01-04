import os

configfile: "post_asereadcounter_processing_config.json"

python_path = "python"

tissues = ["heart", "lung", "liver", "adrenal", "pituitary", "gonads"]
missing_lung_tissues = ["heart", "liver", "adrenal", "pituitary", "gonads"]
missing_gonads_tissues = ["heart", "lung", "liver", "adrenal", "pituitary"]

missing_lung_samples = ["PT103046", "PT104733"]
missing_gonads_samples = ["PT103760", "PT104270"]

rule all:
    input:
        expand(
            "post_asereadcounter_processing/minDepth10/{sample_name}/{sample_name}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv", sample_name=config["dna"], tissue=tissues
        ),
        expand(
            "post_asereadcounter_processing/minDepth10/{sample_name}/{sample_name}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv", sample_name=missing_lung_samples, tissue=missing_lung_tissues
        ),
        expand(
            "post_asereadcounter_processing/minDepth10/{sample_name}/{sample_name}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv", sample_name=missing_gonads_samples, tissue=missing_gonads_tissues
        ),
        expand(
            "post_asereadcounter_processing/minDepth10/{sample_name}/{sample_name}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}.tsv", sample_name=config["dna"], tissue=tissues, chr_n=config["autosomes"]
        ),
        expand(
            "post_asereadcounter_processing/minDepth10/{sample_name}/{sample_name}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}.tsv", sample_name=missing_lung_samples, tissue=missing_lung_tissues
        ),
        expand(
            "post_asereadcounter_processing/minDepth10/{sample_name}/{sample_name}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}.tsv", sample_name=missing_gonads_samples, tissue=missing_gonads_tissues
        )
# ----
# chrX
# ----
# Keep sites post hardfilter, biallelic, and hets
rule obtain_hardfilter_biallelic_hets_sites_minDepth10:
    input:
        vcf = "/scratch/tphung3/Cayo_x_inactivation/01_macaque_data_processing/genotyped_vcfs/mmul8.chrx.gatk.called.hard.filter.biallelics.{sample_name}_het.vcf",
        asereadcounter = "/scratch/tphung3/Cayo_x_inactivation/02_asereadcounter/HISAT/minDepth10/{sample_name}_{tissue}.tsv"
    output:
        "post_asereadcounter_processing/minDepth10/{sample_name}/{sample_name}_{tissue}_filter_for_hardfilter_biallelic_hets.tsv"
    script:
        "obtain_hardfiltered_biallelic_hets_sites.py"

# Remove sites where ref allele is same as alt allele
rule remove_same_refAlt_minDepth10:
    input:
        "post_asereadcounter_processing/minDepth10/{sample_name}/{sample_name}_{tissue}_filter_for_hardfilter_biallelic_hets.tsv"
    output:
        "post_asereadcounter_processing/minDepth10/{sample_name}/{sample_name}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv"
    script:
        "remove_same_refAlt.py"


# ---------
# Autosomes
# ---------
# Keep sites post hardfitler, biallelic, and hets
rule obtain_hardfilter_biallelic_hets_sites_minDepth10_autosomes:
    input:
        vcf = "/scratch/tphung3/Cayo_x_inactivation/01_macaque_data_processing/genotyped_vcfs/mmul8.chr{chr_n}.gatk.called.hard.filter.biallelics.{sample_name}_het.vcf",
        asereadcounter = "/scratch/tphung3/Cayo_x_inactivation/02_asereadcounter/HISAT/minDepth10/{sample_name}_{tissue}_chr{chr_n}.tsv"
    output:
        "post_asereadcounter_processing/minDepth10/{sample_name}/{sample_name}_{tissue}_filter_for_hardfilter_biallelic_hets_chr{chr_n}.tsv"
    script:
        "obtain_hardfiltered_biallelic_hets_sites.py"

# Remove sites where ref allele is same as alt allele
rule remove_same_refAlt_minDepth10_autosomes:
    input:
        "post_asereadcounter_processing/minDepth10/{sample_name}/{sample_name}_{tissue}_filter_for_hardfilter_biallelic_hets_chr{chr_n}.tsv"
    output:
        "post_asereadcounter_processing/minDepth10/{sample_name}/{sample_name}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}.tsv"
    script:
        "remove_same_refAlt.py"
