# Environment: CustomFilterVCF
import os

configfile: "extract_stats_from_vcfs_config.json"

rule all:
    input:
        expand(os.path.join("vcf_stats", "chr{chr_n}_stats.txt"), chr_n=config["chrm"]),
        expand(os.path.join("vcf_stats", "chr{chr_n}_AN_plot.png"), chr_n=config["chrm"]),
        expand(os.path.join("vcf_stats", "chr{chr_n}_QD_plot.png"), chr_n=config["chrm"]),
        expand(os.path.join("vcf_stats", "chr{chr_n}_DP_plot.png"), chr_n=config["chrm"]),
        expand(os.path.join("vcf_stats", "chr{chr_n}_MQ_plot.png"), chr_n=config["chrm"]),
        expand(os.path.join("vcf_stats", "chr{chr_n}_DP_statistics.txt"), chr_n=config["chrm"])

rule extract_stats:
    input:
        vcf = os.path.join(config["raw_vcf_directory"], "mmul8.chr{chr_n}.gatk.called.raw.vcf.gz")
    output:
        stats = os.path.join("vcf_stats", "chr{chr_n}_stats.txt")
    params:
        script = config["extract_stats_from_vcf_script_path"],
        AN = "AN",
        QD = "QD",
        MQ = "MQ",
        DP = "DP"
    shell:
        """
        python {params.script} {params.AN} {params.QD} {params.MQ} {params.DP} --vcf {input.vcf} --outfile {output.stats}
        """

rule plot_stats:
    input:
        os.path.join("vcf_stats", "chr{chr_n}_stats.txt")
    output:
        AN_plot = os.path.join("vcf_stats", "chr{chr_n}_AN_plot.png"),
        QD_plot = os.path.join("vcf_stats", "chr{chr_n}_QD_plot.png"),
        DP_plot = os.path.join("vcf_stats", "chr{chr_n}_DP_plot.png"),
        MQ_plot = os.path.join("vcf_stats", "chr{chr_n}_MQ_plot.png"),
        DP_statistics = os.path.join("vcf_stats", "chr{chr_n}_DP_statistics.txt")
    params:
        script = config["plot_stats_script_path"]
    shell:
        """
        Rscript {params.script} {input} {output.AN_plot} {output.QD_plot} {output.DP_plot} {output.MQ_plot} {output.DP_statistics}
        """
