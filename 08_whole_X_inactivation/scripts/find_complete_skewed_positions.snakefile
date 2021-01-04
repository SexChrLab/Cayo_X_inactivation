configfile: "config.json"
tissues = ["heart", "liver", "lung", "gonads", "pituitary", "adrenal"]
missing_lung_tissues = ["heart", "liver", "gonads", "pituitary", "adrenal"]
missing_gonads_tissues = ["heart", "liver", "lung", "pituitary", "adrenal"]
tissues_GTEx = ["heart", "liver", "lung", "ovary", "pituitary", "adrenal"]

rule all:
    input: #GTEx coding regions
        expand(os.path.join(config["phased_chrX_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_coding_regions_unique_complete_skewed.tsv"), sample=config["GTEx_dna"], tissue=tissues_GTEx)
    input: #cayo coding regions
        expand(os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter_coding_regions_unique_complete_skewed.tsv"), sample=config["sample_with_6_tissues"], tissue=tissues),
        expand(os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter_coding_regions_unique_complete_skewed.tsv"), sample=config["missing_lung_samples"], tissue=missing_lung_tissues),
        expand(os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter_coding_regions_unique_complete_skewed.tsv"), sample=config["missing_gonads_samples"], tissue=missing_gonads_tissues)
    input: #GTEx
        expand("/agavescratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv", sample=config["GTEx_dna"], tissue=tissues_GTEx)
    input: #Cayo
        expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{sample}/{sample}_hap1_{tissue}_hardfilter_complete_skewed.tsv", sample=config["sample_with_6_tissues"], tissue=tissues),
        expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{sample}/{sample}_hap1_{tissue}_hardfilter_complete_skewed.tsv", sample=config["missing_lung_samples"], tissue=missing_lung_tissues),
        expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{sample}/{sample}_hap1_{tissue}_hardfilter_complete_skewed.tsv", sample=config["missing_gonads_samples"], tissue=missing_gonads_tissues)

rule find_complete_skewed_positions:
    input:
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{sample}/{sample}_hap1_{tissue}_hardfilter.tsv"
    output:
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{sample}/{sample}_hap1_{tissue}_hardfilter_complete_skewed.tsv"
    params:
    shell:
        """
        python find_complete_skewed_positions.py --filename {input} --out_filename {output}
        """

rule find_complete_skewed_positions_GTEx:
    input:
        "/agavescratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1.tsv"
    output:
        "/agavescratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/asereadcounter/post_asereadcounter_processing/minDepth10/{sample}/{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_complete_skewed.tsv"
    params:
    shell:
        """
        python find_complete_skewed_positions.py --filename {input} --out_filename {output}
        """

rule find_complete_skewed_positions_cayo_coding_regions:
    input:
        os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter_coding_regions_unique.bed")
    output:
        os.path.join(config["phased_chrX_data_directory"], "{sample}", "{sample}_hap1_{tissue}_hardfilter_coding_regions_unique_complete_skewed.tsv")
    params:
    shell:
        """
        python find_complete_skewed_positions_coding_regions.py --filename {input} --out_filename {output}
        """

rule find_complete_skewed_positions_GTEx_coding_regions:
    input:
        os.path.join(config["phased_chrX_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_coding_regions_unique.bed")
    output:
        os.path.join(config["phased_chrX_GTEx_data_directory"], "{sample}", "{sample}_{tissue}_filter_for_hardfilter_biallelic_hets_rmsameRefAlt_chrX_hap1_coding_regions_unique_complete_skewed.tsv")
    params:
    shell:
        """
        python find_complete_skewed_positions_coding_regions_GTEx.py --filename {input} --out_filename {output}
        """
