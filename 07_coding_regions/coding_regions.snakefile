import os
configfile: "coding_regions_config.json"

rule all:
    input: #find unique lines positions
        expand(os.path.join(config["phased_chrX_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_coding_regions_unique.bed"), sample=config["GTEx_sample_ids"], tissue=config["GTEx_tissues"])
    input: #convert, intersect and find unique lines
        expand(os.path.join(config["phased_chrX_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_coding_regions.bed"), sample=config["GTEx_sample_ids"], tissue=config["GTEx_tissues"])
    input:
        expand(os.path.join(config["unphased_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}.bed"), sample=config["GTEx_sample_ids"], tissue=config["GTEx_tissues"], chr=config["chr"]), #convert unphased GTEx data to bed file format
        expand(os.path.join(config["unphased_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}_coding_regions.bed"), sample=config["GTEx_sample_ids"], tissue=config["GTEx_tissues"], chr=config["chr"]), #bedtools for unphased GTEx data
        expand(os.path.join(config["unphased_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}_coding_regions_unique.bed"), sample=config["GTEx_sample_ids"], tissue=config["GTEx_tissues"], chr=config["chr"]) #find unique lines

    input: #find unique lines
        expand(os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}_coding_regions_unique.bed"), sample=config["sample_ids"], tissue=config["all_tissues"], chr=config["chr"]),
        expand(os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}_coding_regions_unique.bed"), sample=config["missing_lung_samples"], tissue=config["missing_lung_tissues"], chr=config["chr"]),
        expand(os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}_coding_regions_unique.bed"), sample=config["missing_gonads_samples"], tissue=config["missing_gonads_tissues"], chr=config["chr"])
    input: #bedtools intersect for unphased data
        expand(os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}_coding_regions.bed"), sample=config["sample_ids"], tissue=config["all_tissues"], chr=config["chr"]),
        expand(os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}_coding_regions.bed"), sample=config["missing_lung_samples"], tissue=config["missing_lung_tissues"], chr=config["chr"]),
        expand(os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}_coding_regions.bed"), sample=config["missing_gonads_samples"], tissue=config["missing_gonads_tissues"], chr=config["chr"])
    input: #convert unphased data to bed
        expand(os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX.bed"), sample=config["sample_ids"], tissue=config["all_tissues"]),
        expand(os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX.bed"), sample=config["missing_lung_samples"], tissue=config["missing_lung_tissues"]),
        expand(os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX.bed"), sample=config["missing_gonads_samples"], tissue=config["missing_gonads_tissues"]),
        expand(os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr8.bed"), sample=config["sample_ids"], tissue=config["all_tissues"]),
        expand(os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr8.bed"), sample=config["missing_lung_samples"], tissue=config["missing_lung_tissues"]),
        expand(os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr8.bed"), sample=config["missing_gonads_samples"], tissue=config["missing_gonads_tissues"]),

    input: #find unique lines
        expand(os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter_coding_regions_unique.bed"), sample=config["sample_ids"], tissue=config["all_tissues"]),
        expand(os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter_coding_regions_unique.bed"), sample=config["missing_lung_samples"], tissue=config["missing_lung_tissues"]),
        expand(os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter_coding_regions_unique.bed"), sample=config["missing_gonads_samples"], tissue=config["missing_gonads_tissues"])
    input:
        expand(os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter_coding_regions.bed"), sample=config["sample_ids"], tissue=config["all_tissues"]),
        expand(os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter_coding_regions.bed"), sample=config["missing_lung_samples"], tissue=config["missing_lung_tissues"]),
        expand(os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter_coding_regions.bed"), sample=config["missing_gonads_samples"], tissue=config["missing_gonads_tissues"])
    input:
        expand(os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter.bed"), sample=config["sample_ids"], tissue=config["all_tissues"]),
        expand(os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter.bed"), sample=config["missing_lung_samples"], tissue=config["missing_lung_tissues"]),
        expand(os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter.bed"), sample=config["missing_gonads_samples"], tissue=config["missing_gonads_tissues"])

rule convert_phased_data_to_bed:
    input:
        os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter.tsv")
    output:
        os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter.bed")
    params:
        script = config["convert_phased_data_to_bed_script"]
    shell:
        """
        python {params.script} --phased_chrX_data {input} --outfile {output}
        """

rule bedtools_intersect:
    input:
        cds_fasta = "/agavescratch/tphung3/Cayo_x_inactivation/coding_regions/download/Macaca_mulatta.Mmul_8.0.1.cds.all.fa.bed",
        phased_chrX_data = os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter.bed")
    output:
        os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter_coding_regions.bed")
    shell:
        """
        bedtools intersect -a {input.cds_fasta} -b {input.phased_chrX_data} -wb > {output}
        """

rule unique_lines:
    input:
        os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter_coding_regions.bed")
    output:
        os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter_coding_regions_unique.bed")
    shell:
        """
        sort {input} | uniq -u > {output}
        """

rule convert_unphased_chrX_data_to_bed:
    input:
        os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv")
    output:
        os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX.bed")
    params:
        script = config["convert_unphased_data_to_bed_script"]
    shell:
        """
        python {params.script} --unphased_data {input} --outfile {output}
        """

rule convert_unphased_chr8_data_to_bed:
    input:
        os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr8.tsv")
    output:
        os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr8.bed")
    params:
        script = config["convert_unphased_data_to_bed_script"]
    shell:
        """
        python {params.script} --unphased_data {input} --outfile {output}
        """

rule bedtools_intersect_unphased_data:
    input:
        cds_fasta = "/agavescratch/tphung3/Cayo_x_inactivation/coding_regions/download/Macaca_mulatta.Mmul_8.0.1.cds.all.fa.bed",
        unphased_data = os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}.bed")
    output:
        os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}_coding_regions.bed")
    shell:
        """
        bedtools intersect -a {input.cds_fasta} -b {input.unphased_data} -wb > {output}
        """

rule unique_lines_unphased_data:
    input:
        os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}_coding_regions.bed")
    output:
        os.path.join(config["unphased_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}_coding_regions_unique.bed")
    shell:
        """
        sort {input} | uniq -u > {output}
        """

# -------------------
# GTEx data for Human
# -------------------
# # Unphased data
# rule convert_unphased_GTEx_data_to_bed:
#     input:
#         os.path.join(config["unphased_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}.tsv")
#     output:
#         os.path.join(config["unphased_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}.bed")
#     params:
#         script = config["convert_unphased_GTEx_data_to_bed_script"]
#     shell:
#         """
#         python {params.script} --unphased_data {input} --outfile {output}
#         """
#
# rule bedtools_intersect_unphased_GTEx_data:
#     input:
#         cds_fasta = "/agavescratch/tphung3/PlacentaSexDiff/Kimberly/ASE/gencode.v29.annotation.bed",
#         unphased_data = os.path.join(config["unphased_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}.bed")
#     output:
#         os.path.join(config["unphased_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}_coding_regions.bed")
#     shell:
#         """
#         bedtools intersect -a {input.cds_fasta} -b {input.unphased_data} -wb > {output}
#         """
#
# rule unique_lines_unphased_GTEx_data:
#     input:
#         os.path.join(config["unphased_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}_coding_regions.bed")
#     output:
#         os.path.join(config["unphased_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_{chr}_coding_regions_unique.bed")
#     shell:
#         """
#         sort {input} | uniq -u > {output}
#         """

# Phased data
rule convert_phased_GTEx_data_to_bed:
    input:
        os.path.join(config["phased_chrX_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1.tsv")
    output:
        os.path.join(config["phased_chrX_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1.bed")
    params:
        script = config["convert_phased_data_to_bed_script"]
    shell:
        """
        python {params.script} --phased_chrX_data {input} --outfile {output}
        """

rule bedtools_intersect_phased_GTEx_data:
    input:
        cds_fasta = "/agavescratch/tphung3/PlacentaSexDiff/Kimberly/ASE/gencode.v29.annotation.bed",
        phased_chrX_data = os.path.join(config["phased_chrX_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1.bed")
    output:
        os.path.join(config["phased_chrX_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_coding_regions.bed")
    shell:
        """
        bedtools intersect -a {input.cds_fasta} -b {input.phased_chrX_data} -wb > {output}
        """

rule find_unique_positions:
    input:
        os.path.join(config["phased_chrX_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_coding_regions.bed")
    output:
        os.path.join(config["phased_chrX_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_coding_regions_unique.bed")
    params:
        script = config["return_unique_positions_script"]
    shell:
        """
        python {params.script} --infile {input} --outfile {output}
        """
