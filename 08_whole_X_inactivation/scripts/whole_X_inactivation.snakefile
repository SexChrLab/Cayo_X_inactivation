import os

configfile: "config.json"

python_path = "python"

missing_lung_samples = ["PT103046", "PT104733"]
missing_gonads_samples = ["PT103760", "PT104270"]

rule all:
    # -----------
    # hard-filter
    # -----------
    input: #missing gonads samples
        expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_heart_hardfilter.tsv", dna=missing_gonads_samples),
        expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_lung_hardfilter.tsv", dna=missing_gonads_samples),
        expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_liver_hardfilter.tsv", dna=missing_gonads_samples),
        expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_adrenal_hardfilter.tsv", dna=missing_gonads_samples),
        expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_pituitary_hardfilter.tsv", dna=missing_gonads_samples)

    # input: #missing lung samples
    #     expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_heart_hardfilter.tsv", dna=missing_lung_samples),
    #     expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_liver_hardfilter.tsv", dna=missing_lung_samples),
    #     expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_adrenal_hardfilter.tsv", dna=missing_lung_samples),
    #     expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_pituitary_hardfilter.tsv", dna=missing_lung_samples),
    #     expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_gonads_hardfilter.tsv", dna=missing_lung_samples)

    # input: #10 samples
    #     expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_heart_hardfilter.tsv", dna=config["dna"]),
    #     expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_lung_hardfilter.tsv", dna=config["dna"]),
    #     expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_liver_hardfilter.tsv", dna=config["dna"]),
    #     expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_adrenal_hardfilter.tsv", dna=config["dna"]),
    #     expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_pituitary_hardfilter.tsv", dna=config["dna"]),
    #     expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_gonads_hardfilter.tsv", dna=config["dna"])

    # ---------
    # no-filter
    # ---------
    input:
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104733/PT104733_hap1_heart_nofilter.tsv",
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104733/PT104733_hap1_liver_nofilter.tsv",
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104733/PT104733_hap1_adrenal_nofilter.tsv",
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104733/PT104733_hap1_pituitary_nofilter.tsv",
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104733/PT104733_hap1_gonads_nofilter.tsv"
    input:
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104270/PT104270_hap1_heart_nofilter.tsv",
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104270/PT104270_hap1_liver_nofilter.tsv",
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104270/PT104270_hap1_adrenal_nofilter.tsv",
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104270/PT104270_hap1_pituitary_nofilter.tsv",
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104270/PT104270_hap1_lung_nofilter.tsv"
    input:
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103760/PT103760_hap1_heart_nofilter.tsv",
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103760/PT103760_hap1_liver_nofilter.tsv",
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103760/PT103760_hap1_adrenal_nofilter.tsv",
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103760/PT103760_hap1_pituitary_nofilter.tsv",
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103760/PT103760_hap1_lung_nofilter.tsv"
    input:
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103046/PT103046_hap1_heart_nofilter.tsv",
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103046/PT103046_hap1_liver_nofilter.tsv",
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103046/PT103046_hap1_adrenal_nofilter.tsv",
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103046/PT103046_hap1_pituitary_nofilter.tsv",
        "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103046/PT103046_hap1_gonads_nofilter.tsv"
    input:
        expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_heart_nofilter.tsv", dna=config["dna"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_lung_nofilter.tsv", dna=config["dna"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_liver_nofilter.tsv", dna=config["dna"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_adrenal_nofilter.tsv", dna=config["dna"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_pituitary_nofilter.tsv", dna=config["dna"]),
        expand("/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_gonads_nofilter.tsv", dna=config["dna"])


# -----------
# hard-filter
# -----------
# rule phasing_minDepth10:
#     input:
#         heart = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv",
#         lung = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv",
#         liver = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv",
#         adrenal = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv",
#         pituitary = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv",
#         gonads = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_gonads_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv"
#     output:
#         heart = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_heart_hardfilter.tsv",
#         lung = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_lung_hardfilter.tsv",
#         liver = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_liver_hardfilter.tsv",
#         adrenal = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_adrenal_hardfilter.tsv",
#         pituitary = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_pituitary_hardfilter.tsv",
#         gonads = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_gonads_hardfilter.tsv",
#     script:
#         "phase_whole_X.py"

# rule phasing_minDepth10_hardfilter_missinglung:
#     input:
#         heart = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv",
#         liver = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv",
#         adrenal = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv",
#         pituitary = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv",
#         gonads = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_gonads_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv"
#     output:
#         heart = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_heart_hardfilter.tsv",
#         liver = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_liver_hardfilter.tsv",
#         adrenal = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_adrenal_hardfilter.tsv",
#         pituitary = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_pituitary_hardfilter.tsv",
#         gonads = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_gonads_hardfilter.tsv"
#     script:
#         "phase_whole_X_5tissues.py"

rule phasing_minDepth10_hardfilter_missinggonads:
    input:
        heart = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_heart_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv",
        liver = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_liver_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv",
        adrenal = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_adrenal_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv",
        pituitary = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_pituitary_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv",
        lung = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_lung_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv"
    output:
        heart = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_heart_hardfilter.tsv",
        liver = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_liver_hardfilter.tsv",
        adrenal = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_adrenal_hardfilter.tsv",
        pituitary = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_pituitary_hardfilter.tsv",
        lung = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_lung_hardfilter.tsv"
    script:
        "phase_whole_X_5tissues.py"

# ---------
# no-filter
# ---------
rule phasing_minDepth10_nofilter:
    input:
        heart = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_heart_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        lung = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_lung_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        liver = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_liver_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        adrenal = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_adrenal_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        pituitary = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_pituitary_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        gonads = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/{dna}/{dna}_gonads_nofilter_biallelic_hets_rmsameRefAlt.tsv"
    output:
        heart = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_heart_nofilter.tsv",
        lung = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_lung_nofilter.tsv",
        liver = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_liver_nofilter.tsv",
        adrenal = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_adrenal_nofilter.tsv",
        pituitary = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_pituitary_nofilter.tsv",
        gonads = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/{dna}/{dna}_hap1_gonads_nofilter.tsv",
    script:
        "phase_whole_X.py"

rule phasing_minDepth10_nofilter_PT103046:
    input:
        heart = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT103046/PT103046_heart_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        liver = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT103046/PT103046_liver_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        adrenal = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT103046/PT103046_adrenal_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        pituitary = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT103046/PT103046_pituitary_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        gonads = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT103046/PT103046_gonads_nofilter_biallelic_hets_rmsameRefAlt.tsv"
    output:
        heart = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103046/PT103046_hap1_heart_nofilter.tsv",
        liver = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103046/PT103046_hap1_liver_nofilter.tsv",
        adrenal = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103046/PT103046_hap1_adrenal_nofilter.tsv",
        pituitary = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103046/PT103046_hap1_pituitary_nofilter.tsv",
        gonads = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103046/PT103046_hap1_gonads_nofilter.tsv",
    script:
        "phase_whole_X_5tissues.py"

rule phasing_minDepth10_nofilter_PT103760:
    input:
        heart = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT103760/PT103760_heart_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        liver = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT103760/PT103760_liver_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        adrenal = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT103760/PT103760_adrenal_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        pituitary = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT103760/PT103760_pituitary_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        lung = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT103760/PT103760_lung_nofilter_biallelic_hets_rmsameRefAlt.tsv"
    output:
        heart = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103760/PT103760_hap1_heart_nofilter.tsv",
        liver = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103760/PT103760_hap1_liver_nofilter.tsv",
        adrenal = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103760/PT103760_hap1_adrenal_nofilter.tsv",
        pituitary = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103760/PT103760_hap1_pituitary_nofilter.tsv",
        lung = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT103760/PT103760_hap1_lung_nofilter.tsv"
    script:
        "phase_whole_X_5tissues.py"

rule phasing_minDepth10_nofilter_PT104270:
    input:
        heart = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT104270/PT104270_heart_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        liver = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT104270/PT104270_liver_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        adrenal = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT104270/PT104270_adrenal_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        pituitary = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT104270/PT104270_pituitary_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        lung = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT104270/PT104270_lung_nofilter_biallelic_hets_rmsameRefAlt.tsv"
    output:
        heart = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104270/PT104270_hap1_heart_nofilter.tsv",
        liver = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104270/PT104270_hap1_liver_nofilter.tsv",
        adrenal = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104270/PT104270_hap1_adrenal_nofilter.tsv",
        pituitary = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104270/PT104270_hap1_pituitary_nofilter.tsv",
        lung = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104270/PT104270_hap1_lung_nofilter.tsv"
    script:
        "phase_whole_X_5tissues.py"

rule phasing_minDepth10_nofilter_PT104733:
    input:
        heart = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT104733/PT104733_heart_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        liver = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT104733/PT104733_liver_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        adrenal = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT104733/PT104733_adrenal_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        pituitary = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT104733/PT104733_pituitary_nofilter_biallelic_hets_rmsameRefAlt.tsv",
        gonads = "/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/PT104733/PT104733_gonads_nofilter_biallelic_hets_rmsameRefAlt.tsv"
    output:
        heart = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104733/PT104733_hap1_heart_nofilter.tsv",
        liver = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104733/PT104733_hap1_liver_nofilter.tsv",
        adrenal = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104733/PT104733_hap1_adrenal_nofilter.tsv",
        pituitary = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104733/PT104733_hap1_pituitary_nofilter.tsv",
        gonads = "/scratch/tphung3/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104733/PT104733_hap1_gonads_nofilter.tsv"
    script:
        "phase_whole_X_5tissues.py"
