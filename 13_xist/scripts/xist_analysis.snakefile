import os

configfile: "xist_analysis_config.json"

rule all:
    input: #bedtools_intersect
        expand("/scratch/tphung3/Cayo_x_inactivation/13_xist/results/expressed_variants_in_xist/{sample}/{sample}_{tissue}_expressed_variants_in_xist.bed", sample=config["samples"], tissue=config["tissues"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/13_xist/results/expressed_variants_in_xist/{sample}/{sample}_{tissue}_expressed_variants_in_xist.bed", sample=config["missing_lung_samples"], tissue=config["missing_lung_tissues"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/13_xist/results/expressed_variants_in_xist/{sample}/{sample}_{tissue}_expressed_variants_in_xist.bed", sample=config["missing_gonads_samples"], tissue=config["missing_gonads_tissues"])

    input: #convert_asereadcounter_to_bed
        expand("/scratch/tphung3/Cayo_x_inactivation/13_xist/results/asereadcounter_bed_format/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.bed", sample=config["samples"], tissue=config["tissues"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/13_xist/results/asereadcounter_bed_format/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.bed", sample=config["missing_lung_samples"], tissue=config["missing_lung_tissues"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/13_xist/results/asereadcounter_bed_format/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.bed", sample=config["missing_gonads_samples"], tissue=config["missing_gonads_tissues"])

rule convert_asereadcounter_to_bed:
    input:
        "/scratch/tphung3/Cayo_x_inactivation/02_asereadcounter/post_asereadcounter_processing/minDepth10/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv"
    output:
        "/scratch/tphung3/Cayo_x_inactivation/13_xist/results/asereadcounter_bed_format/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.bed"
    params:
        script = config["convert_asereadcounter_to_bed_script"]
    shell:
        """
        python {params.script} --input_asereadcounter {input} --output_filepath {output}
        """

rule bedtools_intersect:
    input:
        xist = "/scratch/tphung3/Cayo_x_inactivation/13_xist/xist_rhemac8_coordinates.bed",
        asereadcounter = "/scratch/tphung3/Cayo_x_inactivation/13_xist/results/asereadcounter_bed_format/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.bed"
    output:
        "/scratch/tphung3/Cayo_x_inactivation/13_xist/results/expressed_variants_in_xist/{sample}/{sample}_{tissue}_expressed_variants_in_xist.bed"
    shell:
        """
        bedtools intersect -a {input.xist} -b {input.asereadcounter} -wa -wb > {output}
        """
