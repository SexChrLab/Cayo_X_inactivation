import os
configfile: "analyze_skewed_variants_config.json"

rule all:
    input:
        expand("/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX.bed", sample=config["sample_ids"], tissue=config["all_tissues"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX.bed", sample=config["missing_lung_samples"], tissue=config["missing_lung_tissues"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX.bed", sample=config["missing_gonads_samples"], tissue=config["missing_gonads_tissues"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}.bed", sample=config["sample_ids"], tissue=config["all_tissues"], chr_n=config["autosomes"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}.bed", sample=config["missing_lung_samples"], tissue=config["missing_lung_tissues"], chr_n=config["autosomes"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}.bed", sample=config["missing_gonads_samples"], tissue=config["missing_gonads_tissues"], chr_n=config["autosomes"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}_coding_regions.bed", sample=config["sample_ids"], tissue=config["all_tissues"], chr_n=config["all_chromosomes"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}_coding_regions.bed", sample=config["missing_lung_samples"], tissue=config["missing_lung_tissues"], chr_n=config["all_chromosomes"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}_coding_regions.bed", sample=config["missing_gonads_samples"], tissue=config["missing_gonads_tissues"], chr_n=config["all_chromosomes"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}_coding_regions_rmdups.bed", sample=config["sample_ids"], tissue=config["all_tissues"], chr_n=config["all_chromosomes"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}_coding_regions_rmdups.bed", sample=config["missing_lung_samples"], tissue=config["missing_lung_tissues"], chr_n=config["all_chromosomes"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}_coding_regions_rmdups.bed", sample=config["missing_gonads_samples"], tissue=config["missing_gonads_tissues"], chr_n=config["all_chromosomes"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}_coding_regions_rmdups_allelebalance.bed", sample=config["sample_ids"], tissue=config["all_tissues"], chr_n=config["all_chromosomes"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}_coding_regions_rmdups_allelebalance.bed", sample=config["missing_lung_samples"], tissue=config["missing_lung_tissues"], chr_n=config["all_chromosomes"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}_coding_regions_rmdups_allelebalance.bed", sample=config["missing_gonads_samples"], tissue=config["missing_gonads_tissues"], chr_n=config["all_chromosomes"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_chr{chr_n}_coding_regions_statistics.txt", sample=config["sample_ids"], tissue=config["all_tissues"], chr_n=config["all_chromosomes"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_chr{chr_n}_coding_regions_statistics.txt", sample=config["missing_lung_samples"], tissue=config["missing_lung_tissues"], chr_n=config["all_chromosomes"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_chr{chr_n}_coding_regions_statistics.txt", sample=config["missing_gonads_samples"], tissue=config["missing_gonads_tissues"], chr_n=config["all_chromosomes"])

rule convert_unphased_chrX_data_to_bed:
    input:
        "/scratch/tphung3/Cayo_x_inactivation/02_asereadcounter/post_asereadcounter_processing/minDepth10/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv"
    output:
        "/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX.bed"
    params:
        script = config["convert_unphased_data_to_bed_script"]
    shell:
        """
        python {params.script} --unphased_data {input} --outfile {output}
        """

rule convert_unphased_autosomes_data_to_bed:
    input:
        "/scratch/tphung3/Cayo_x_inactivation/02_asereadcounter/post_asereadcounter_processing/minDepth10/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}.tsv"
    output:
        "/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}.bed"
    params:
        script = config["convert_unphased_data_to_bed_script"]
    shell:
        """
        python {params.script} --unphased_data {input} --outfile {output}
        """

rule bedtools_intersect_unphased_data:
    input:
        cds_fasta = "/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/data/Macaca_mulatta.Mmul_8.0.1.cds.all.bed",
        unphased_data = "/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}.bed"
    output:
        "/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}_coding_regions.bed"
    shell:
        """
        bedtools intersect -a {input.cds_fasta} -b {input.unphased_data} -wa -wb > {output}
        """

rule remove_duplicates:
    input:
        "/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}_coding_regions.bed"
    output:
        "/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}_coding_regions_rmdups.bed"
    params:
        script = config["remove_duplicates_script"]
    shell:
        """
        python {params.script} {input} {output}
        """

rule compute_allele_balance:
    input:
        "/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}_coding_regions_rmdups.bed"
    output:
        "/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}_coding_regions_rmdups_allelebalance.bed"
    params:
        script = config["compute_allele_balance_script"]
    shell:
        """
        python {params.script} {input} {output}
        """

rule tabulate_statistics:
    input:
        "/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chr{chr_n}_coding_regions_rmdups_allelebalance.bed"
    output:
        "/scratch/tphung3/Cayo_x_inactivation/06_analyze_skewed_variants/results/{sample}/{sample}_{tissue}_chr{chr_n}_coding_regions_statistics.txt"
    params:
        script = config["tabulate_statistics_script"],
        sample = "{sample}",
        tissue = "{tissue}",
        chrom = "chr{chr_n}"
    shell:
        """
        python {params.script} --sampleID {params.sample} --tissue {params.tissue} --chrom {params.chrom} --infile {input} --outfile {output}
        """
