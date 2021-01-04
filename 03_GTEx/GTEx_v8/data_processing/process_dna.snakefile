import os

configfile: "GTEx_config.json"

temp_directory = "temp/"
adapter_path = "/scratch/tphung3/Cayo_x_inactivation/misc/adapter_sequence.fa"

chr_to_genotype = ["X", "8"]
autosomes_to_genotype = ["1", "2", "3", "4", "5", "6", "7", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22"]

gatk_path = "/home/tphung3/softwares/gatk-4.1.0.0/gatk"
gatk3_path = "/home/tphung3/softwares/GenomeAnalysisTK-3.8-0-ge9d806836/GenomeAnalysisTK.jar"
bcftools_path = "bcftools"


rule all:
    input: #gatk
        expand("gvcfs/{sample}.GRCh38.p12.genome.XXonly.chr{chr}.g.vcf.gz", sample=config["dna"], chr=chr_to_genotype)
    # Date: 02/13/2020
    # Goal: To filter variants on chrX by VQSR
    input:
        expand("vqsr/chrX.gatk.called.vqsr.sv.biallelic.{sample}.het.vcf", sample=config["dna"])
    input:
        expand("vqsr/chrX.gatk.called.vqsr.sv.biallelic.{sample}.vcf", sample=config["dna"])
    input:
        "vqsr/chrX.gatk.called.vqsr.sv.vcf.gz"
    # End date 02/13/2020

    # Date: 02/12/2020
    # Select biallelic and het variants for the raw vcf file for each individual
    input:
        expand("genotyped_vcfs/GRCh38.p12.genome.XXonly.chrX.gatk.called.raw.biallelic.hets.{sample}.vcf", sample=config["dna"])
    # End date 02/12/2020
    # --------------------------------------------------
    # Date: 12/27/2019
    # GATK Joint-genotyping for chr1-chr7 and chr9-chr22
    input:
        expand("genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.hard.filter.biallelic.het.{sample}.vcf", chr=autosomes_to_genotype, sample=config["dna"])
    input: #hard filter, select biallelic, subset
        expand("genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.hard.filter.biallelic.{sample}.vcf", chr=autosomes_to_genotype, sample=config["dna"])
    input:
        expand("genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.raw.{sample}.vcf", chr=autosomes_to_genotype, sample=config["dna"])
    input: #GATK joint genotyping
        expand("gvcfs/{sample}.GRCh38.p12.genome.XXonly.chr{chr}.g.vcf.gz", sample=config["dna"], chr=autosomes_to_genotype),
        expand("combined_gvcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.combinegvcf.g.vcf.gz", chr=autosomes_to_genotype),
        expand("genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.raw.vcf.gz", chr=autosomes_to_genotype)

    # End date 12/27/2019
    # --------------------------------------------------
    input:
        expand("genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.hard.filter.biallelic.het.{sample}.vcf", chr=chr_to_genotype, sample=config["dna"])
    input: #hard filter, select biallelic, subset
        expand("genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.hard.filter.biallelic.{sample}.vcf", chr=chr_to_genotype, sample=config["dna"])
    input: #subset VCF file for individual to be use for ASEReadCounter
        expand("genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.raw.{sample}.vcf", sample=config["dna"], chr=chr_to_genotype), #subset VCF
    input: #gatk
        expand("gvcfs/{sample}.GRCh38.p12.genome.XXonly.chr{chr}.g.vcf.gz", sample=config["dna"], chr=chr_to_genotype),
        expand("genotyped_vcfs/GRCh38.p12.genome.XXonly.chr8.gatk.called.raw.vcf.gz"),
        expand("genotyped_vcfs/GRCh38.p12.genome.XXonly.chrX.gatk.called.raw.vcf.gz")
    input: #generate index from mkdup bams
        expand("processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.mkdup.merged.bam.bai", sample=config["dna"])
    input: #picard & gatk
        expand("processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.mkdup.merged.bam", sample=config["dna"]),
        expand("picard_stats/{sample}.GRCh38.p12.genome.XXonly.picard_mkdup_metrics.txt", sample=config["dna"])
    input: #merge bams
        expand("processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.merged.bam", sample=config["dna"])
    input: #map, index, and bam stats
        expand("processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.bam.bai", sample=config["dna_read_group_identifier"]),
        expand("bam_stats/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.stats", sample=config["dna_read_group_identifier"])

    input: #multiqc after trimming
        "multiqc_dna_trimmed/multiqc_report.html"
    input: #multiqc before trimming
        "multiqc_dna/multiqc_report.html"

# QC Rules

rule fastqc_analysis_dna:
    input:
        fq_1 = lambda wildcards: os.path.join(config[wildcards.sample]["fq_path"], config[wildcards.sample]["fq_1"]),
        fq_2 = lambda wildcards: os.path.join(config[wildcards.sample]["fq_path"], config[wildcards.sample]["fq_2"])
    output:
        "fastqc_dna/{sample}_1_fastqc.html",
        "fastqc_dna/{sample}_2_fastqc.html"
    shell:
        """
        PERL5LIB=/home/tphung3/softwares/miniconda3/envs/epitopepipeline/lib/site_perl/5.26.2/ fastqc -o fastqc_dna {input.fq_1}
        PERL5LIB=/home/tphung3/softwares/miniconda3/envs/epitopepipeline/lib/site_perl/5.26.2/ fastqc -o fastqc_dna {input.fq_2}
        """

rule multiqc_analysis_dna:
	input:
		expand(
			"fastqc_dna/{sample}_{read}_fastqc.html",
			sample=config["dna_read_group_identifier"], read=["1", "2"])
	output:
		"multiqc_dna/multiqc_report.html"
	shell:
		"export LC_ALL=en_US.UTF-8 && export LANG=en_US.UTF-8 && "
		"multiqc --interactive -f -o multiqc_dna fastqc_dna"

rule trim_adapters_paired_bbduk_dna:
    input:
        fq_1 = lambda wildcards: os.path.join(config[wildcards.sample]["fq_path"], config[wildcards.sample]["fq_1"]),
        fq_2 = lambda wildcards: os.path.join(config[wildcards.sample]["fq_path"], config[wildcards.sample]["fq_2"])
    output:
        out_fq_1 = "trimmed_fastqs_dna/{sample}_trimmed_read1.fastq.gz",
        out_fq_2 = "trimmed_fastqs_dna/{sample}_trimmed_read2.fastq.gz"
    params:
        adapter = adapter_path
    threads:
        2
    shell:
        "bbduk.sh -Xmx3g in1={input.fq_1} in2={input.fq_2} out1={output.out_fq_1} out2={output.out_fq_2} ref={params.adapter} ktrim=r k=21 mink=11 hdist=2 tbo tpe qtrim=rl trimq=10"

rule fastqc_analysis_trimmed:
	input:
		fq_1 = "trimmed_fastqs_dna/{sample}_trimmed_read1.fastq.gz",
		fq_2 = "trimmed_fastqs_dna/{sample}_trimmed_read2.fastq.gz"
	output:
		html1 = "fastqc_trimmed_dna/{sample}_trimmed_read1_fastqc.html",
		html2 = "fastqc_trimmed_dna/{sample}_trimmed_read2_fastqc.html"
	shell:
		"PERL5LIB=/home/tphung3/softwares/miniconda3/envs/epitopepipeline/lib/site_perl/5.26.2/ fastqc -o fastqc_trimmed_dna {input.fq_1} {input.fq_2}"

rule multiqc_analysis_trimmed_dna:
	input:
		expand(
			"fastqc_trimmed_dna/{sample}_trimmed_read{read}_fastqc.html",
			sample=config["dna_read_group_identifier"], read=["1", "2"])
	output:
		"multiqc_dna_trimmed/multiqc_report.html"
	shell:
		"export LC_ALL=en_US.UTF-8 && export LANG=en_US.UTF-8 && "
		"multiqc --interactive -f -o multiqc_dna_trimmed fastqc_trimmed_dna"

rule map_and_process_trimmed_reads_dna:
	input:
		fq_1 = "trimmed_fastqs_dna/{sample}_trimmed_read1.fastq.gz",
		fq_2 = "trimmed_fastqs_dna/{sample}_trimmed_read2.fastq.gz",
		fai_xx = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa.fai",
		ref_xx = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa"
	output:
		"processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.bam"
	params:
		id = lambda wildcards: config[wildcards.sample]["ID"],
		sm = lambda wildcards: config[wildcards.sample]["SM"],
		lb = lambda wildcards: config[wildcards.sample]["LB"],
		pu = lambda wildcards: config[wildcards.sample]["PU"],
		pl = lambda wildcards: config[wildcards.sample]["PL"]
	threads:
		4
	shell:
		"bwa mem -t {threads} -R "
		"'@RG\\tID:{params.id}\\tSM:{params.sm}\\tLB:{params.lb}\\tPU:{params.pu}\\tPL:{params.pl}' "
		"{input.ref_xx} {input.fq_1} {input.fq_2} "
		"| samblaster "
		"| samtools fixmate -O bam - - | samtools sort "
		"-O bam -o {output}"

rule index_bam_dna:
	input:
		"processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.bam"
	output:
		"processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.bam.bai"
	shell:
		"samtools index {input}"

rule bam_stats_dna:
	input:
		"processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.bam"
	output:
		"bam_stats/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.stats"
	shell:
		"samtools stats {input} | grep ^SN | cut -f 2- > {output}"

rule merge_bams_dna:
	input:
		bams = lambda wildcards: expand(
			"processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.bam",
			sample=config["dna_samples"][wildcards.sample]),
		bais = lambda wildcards: expand(
			"processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.bam.bai",
			sample=config["dna_samples"][wildcards.sample])
	output:
		"processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.merged.bam"
	threads: 4
	params:
		threads = 4
	shell:
		"sambamba merge -t {params.threads} {output} {input.bams}"

rule index_merged_bams_dna:
    input:
        "processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.merged.bam"
    output:
        "processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.merged.bam.bai"
    shell:
        "samtools index {input}"

rule picard_mkdups:
    input:
        bam = "processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.merged.bam",
        bai = "processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.merged.bam.bai"
    output:
        bam = "processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.mkdup.merged.bam",
        metrics = "picard_stats/{sample}.GRCh38.p12.genome.XXonly.picard_mkdup_metrics.txt"
    threads: 4
    shell:
        "picard -Xmx14g MarkDuplicates I={input.bam} O={output.bam} "
        "M={output.metrics}"

rule index_mkdup_bams_dna:
    input:
        "processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.mkdup.merged.bam"
    output:
        "processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.mkdup.merged.bam.bai"
    shell:
        "samtools index {input}"

# Call variants for chrX and chr8
rule gatk_gvcf:
	input:
		ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
		bam = "processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.mkdup.merged.bam",
		bai = "processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.mkdup.merged.bam.bai"
	output:
		"gvcfs/{sample}.GRCh38.p12.genome.XXonly.chr{chr}.g.vcf.gz"
	params:
		gatk = gatk_path,
		chrm_n = "chr{chr}"
	threads:
		4
	shell:
		"{params.gatk} "
		"HaplotypeCaller -R {input.ref} -I {input.bam} -L {params.chrm_n} "
		"--emit-ref-confidence GVCF --output {output}"
#
# rule gatk_combinegvcfs_chrX:
# 	input:
# 		ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
# 		gvcfs = expand(
# 			"gvcfs/{sample}.GRCh38.p12.genome.XXonly.chrX.g.vcf.gz", sample=config["dna"])
# 	output:
# 		"combined_gvcfs/GRCh38.p12.genome.XXonly.chrX.gatk.combinegvcf.g.vcf.gz"
# 	params:
# 		gatk = gatk_path
# 	threads:
# 		4
# 	run:
# 		variant_files = []
# 		for i in input.gvcfs:
# 			variant_files.append("--variant " + i)
# 		variant_files = " ".join(variant_files)
# 		shell(
# 			"""{params.gatk} --java-options "-Xmx10g" """
# 			"""CombineGVCFs -R {input.ref} {variant_files} -O {output}""")
#
# rule gatk_genotypegvcf_chrX:
# 	input:
# 		ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
# 		gvcf = "combined_gvcfs/GRCh38.p12.genome.XXonly.chrX.gatk.combinegvcf.g.vcf.gz"
# 	output:
# 		"genotyped_vcfs/GRCh38.p12.genome.XXonly.chrX.gatk.called.raw.vcf.gz"
# 	params:
# 		gatk = gatk_path
# 	threads:
# 		4
# 	shell:
# 		"""{params.gatk} --java-options "-Xmx10g" """
# 		"""GenotypeGVCFs -R {input.ref} -V {input.gvcf} -O {output}"""
#
# rule gatk_combinegvcfs_chr8:
# 	input:
# 		ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
# 		gvcfs = expand(
# 			"gvcfs/{sample}.GRCh38.p12.genome.XXonly.chr8.g.vcf.gz", sample=config["dna"])
# 	output:
# 		"combined_gvcfs/GRCh38.p12.genome.XXonly.chr8.gatk.combinegvcf.g.vcf.gz"
# 	params:
# 		gatk = gatk_path
# 	threads:
# 		4
# 	run:
# 		variant_files = []
# 		for i in input.gvcfs:
# 			variant_files.append("--variant " + i)
# 		variant_files = " ".join(variant_files)
# 		shell(
# 			"""{params.gatk} --java-options "-Xmx10g" """
# 			"""CombineGVCFs -R {input.ref} {variant_files} -O {output}""")
#
# rule gatk_genotypegvcf_chr8:
# 	input:
# 		ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
# 		gvcf = "combined_gvcfs/GRCh38.p12.genome.XXonly.chr8.gatk.combinegvcf.g.vcf.gz"
# 	output:
# 		"genotyped_vcfs/GRCh38.p12.genome.XXonly.chr8.gatk.called.raw.vcf.gz"
# 	params:
# 		gatk = gatk_path
# 	threads:
# 		4
# 	shell:
# 		"""{params.gatk} --java-options "-Xmx10g" """
# 		"""GenotypeGVCFs -R {input.ref} -V {input.gvcf} -O {output}"""
#
# # Subset VCF file for per individual to use for asereadcounter
# rule subset_individuals:
#     input:
#         "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.raw.vcf.gz"
#     output:
#         "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.raw.{sample}.vcf"
#     params:
#         bcftools = bcftools_path,
#         sample = "{sample}"
#     shell:
#         """{params.bcftools} view -s {params.sample} {input} > {output}"""
#
# # ----------------------------
# # Hard Filter on chrX and chr8
# # ----------------------------
# rule hard_filter:
# 	input:
# 		ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
# 		vcf = "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.raw.vcf.gz"
# 	output:
# 		"genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.hard.filter.vcf.gz"
# 	params:
# 		gatk = gatk3_path
# 	shell:
# 		"""java -jar {params.gatk} """
# 		"""-R {input.ref} """
# 		"""-T SelectVariants """
# 		"""-V {input.vcf} """
# 		"""-o {output} """
# 		"""-select "AN >= 4 && MQ > 55.0 && QD > 15.0 && DP <= 1000.0" """
#
# #----------------------------------------
# # Further processing VCF
# # 1. Restrict to biallelic sites
# # 2. Subset VCF files for each individual
# # 3. Keep only the heterozygous sites
# #----------------------------------------
# rule gatk_selectbiallelic:
#     input:
#         ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
#         vcf = "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.hard.filter.vcf.gz"
#     output:
#         "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.hard.filter.biallelic.vcf.gz"
#     params:
#         gatk = gatk3_path
#     shell:
#         """java -jar {params.gatk} """
#         """-T SelectVariants """
#         """-R {input.ref} """
#         """-V {input.vcf} """
#         """-o {output} """
#         """-restrictAllelesTo BIALLELIC """
#
# # rule subset_individuals_hard_filter:
# #     input:
# #         "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.hard.filter.biallelic.vcf.gz"
# #     output:
# #         "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.hard.filter.biallelic.{sample}.vcf"
# #     params:
# #         bcftools = bcftools_path,
# #         sample = "{sample}"
# #     shell:
# #         """{params.bcftools} view -s {params.sample} {input} > {output}"""
#
# # After subsetting for each individual. In some individuals,
# # the genotypes could be homozygous for the reference. This next rule is to remove these sites.
# rule gatk_selectheterozygous:
#     input:
#         ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
#         vcf = "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.hard.filter.biallelic.{sample}.vcf"
#     output:
#         "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.hard.filter.biallelic.het.{sample}.vcf"
#     params:
#         gatk = gatk3_path
#     shell:
#         """java -jar {params.gatk} """
#         """ -T SelectVariants """
#         """-R {input.ref} """
#         """-V {input.vcf} """
#         """-o {output} """
#         """-select "AC == 1" """

# ----------------------------------------------------
# Date: 12/27/2019
# GATK joint-genotype calling on chr1-chr7, chr9-chr22
# ----------------------------------------------------

# rule gatk_gvcf_autosomes:
# 	input:
# 		ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
# 		bam = "processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.mkdup.merged.bam",
# 		bai = "processed_bams/dna/{sample}.GRCh38.p12.genome.XXonly.mkdup.sorted.mkdup.merged.bam.bai"
# 	output:
# 		"gvcfs/{sample}.GRCh38.p12.genome.XXonly.chr{chr}.g.vcf.gz"
# 	params:
# 		gatk = gatk_path,
# 		chrm_n = "chr{chr}"
# 	threads:
# 		4
# 	shell:
# 		"{params.gatk} "
# 		"HaplotypeCaller -R {input.ref} -I {input.bam} -L {params.chrm_n} "
# 		"--emit-ref-confidence GVCF --output {output}"

# rule gatk_combinegvcfs_autosomes:
# 	input:
# 		ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
# 		gvcfs = expand(
# 			"gvcfs/{sample}.GRCh38.p12.genome.XXonly.chr{chr}.g.vcf.gz", sample=config["dna"], chr=autosomes_to_genotype)
# 	output:
# 		"combined_gvcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.combinegvcf.g.vcf.gz"
# 	params:
# 		gatk = gatk_path,
# 		chr_n = "chr{chr}"
# 	threads:
# 		4
# 	run:
# 		variant_files = []
# 		for i in input.gvcfs:
# 			variant_files.append("--variant " + i)
# 		variant_files = " ".join(variant_files)
# 		shell(
# 			"""{params.gatk} --java-options "-Xmx10g" """
# 			"""CombineGVCFs -R {input.ref} {variant_files} --intervals {params.chr_n} -O {output}""")
#
# rule gatk_genotypegvcf_autosomes:
# 	input:
# 		ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
# 		gvcf = "combined_gvcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.combinegvcf.g.vcf.gz"
# 	output:
# 		"genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.raw.vcf.gz"
# 	params:
# 		gatk = gatk_path
# 	threads:
# 		4
# 	shell:
# 		"""{params.gatk} --java-options "-Xmx10g" """
# 		"""GenotypeGVCFs -R {input.ref} -V {input.gvcf} -O {output}"""

# Subset VCF file for per individual to use for asereadcounter
# rule subset_individuals_autosomes:
#     input:
#         "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.raw.vcf.gz"
#     output:
#         "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.raw.{sample}.vcf"
#     params:
#         bcftools = bcftools_path,
#         sample = "{sample}"
#     shell:
#         """{params.bcftools} view -s {params.sample} {input} > {output}"""

# ------------------------------------
# Hard Filter on chr1-chr7, chr9-chr22
# ------------------------------------
rule hard_filter_autosomes:
	input:
		ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
		vcf = "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.raw.vcf.gz"
	output:
		"genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.hard.filter.vcf.gz"
	params:
		gatk = gatk3_path
	shell:
		"""java -jar {params.gatk} """
		"""-R {input.ref} """
		"""-T SelectVariants """
		"""-V {input.vcf} """
		"""-o {output} """
		"""-select "AN >= 4 && MQ > 55.0 && QD > 15.0 && DP <= 1000.0" """

#----------------------------------------
# Further processing VCF
# 1. Restrict to biallelic sites
# 2. Subset VCF files for each individual
# 3. Keep only the heterozygous sites
#----------------------------------------
rule gatk_selectbiallelic_autosomes:
    input:
        ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
        vcf = "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.hard.filter.vcf.gz"
    output:
        "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.hard.filter.biallelic.vcf.gz"
    params:
        gatk = gatk3_path
    shell:
        """java -jar {params.gatk} """
        """-T SelectVariants """
        """-R {input.ref} """
        """-V {input.vcf} """
        """-o {output} """
        """-restrictAllelesTo BIALLELIC """

# rule subset_individuals_hard_filter_autosomes:
#     input:
#         "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.hard.filter.biallelic.vcf.gz"
#     output:
#         "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.hard.filter.biallelic.{sample}.vcf"
#     params:
#         bcftools = bcftools_path,
#         sample = "{sample}"
#     shell:
#         """{params.bcftools} view -s {params.sample} {input} > {output}"""

# After subsetting for each individual. In some individuals,
# the genotypes could be homozygous for the reference. This next rule is to remove these sites.
rule gatk_selectheterozygous_autosomes:
    input:
        ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
        vcf = "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.hard.filter.biallelic.{sample}.vcf"
    output:
        "genotyped_vcfs/GRCh38.p12.genome.XXonly.chr{chr}.gatk.called.hard.filter.biallelic.het.{sample}.vcf"
    params:
        gatk = gatk3_path
    shell:
        """java -jar {params.gatk} """
        """ -T SelectVariants """
        """-R {input.ref} """
        """-V {input.vcf} """
        """-o {output} """
        """-select "AC == 1" """

# For the raw VCF file (before any filtering) for each individual, I want to select biallelic and heterozygous variants
# Date: 02/12/2020
rule gatk_selectbiallelic_raw_chrX:
    input:
        ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
        vcf = "genotyped_vcfs/GRCh38.p12.genome.XXonly.chrX.gatk.called.raw.{sample}.vcf"
    output:
        "genotyped_vcfs/GRCh38.p12.genome.XXonly.chrX.gatk.called.raw.biallelic.{sample}.vcf"
    params:
        gatk = gatk3_path
    shell:
        """java -jar {params.gatk} """
        """-T SelectVariants """
        """-R {input.ref} """
        """-V {input.vcf} """
        """-o {output} """
        """-restrictAllelesTo BIALLELIC """

rule gatk_selectheterozygous_raw_chrX:
    input:
        ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
        vcf = "genotyped_vcfs/GRCh38.p12.genome.XXonly.chrX.gatk.called.raw.biallelic.{sample}.vcf"
    output:
        "genotyped_vcfs/GRCh38.p12.genome.XXonly.chrX.gatk.called.raw.biallelic.hets.{sample}.vcf"
    params:
        gatk = gatk3_path
    shell:
        """java -jar {params.gatk} """
        """ -T SelectVariants """
        """-R {input.ref} """
        """-V {input.vcf} """
        """-o {output} """
        """-select "AC == 1" """

# Date: 02/13/2020
# Goal: to filter by VQSR
rule gatk_variantrecalibrator_chrX:
    input:
        ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
        vcf = "genotyped_vcfs/GRCh38.p12.genome.XXonly.chrX.gatk.called.raw.vcf.gz",
        hapmap = "/scratch/tphung3/PopulationReferenceAlignment/analyses/compare_hardfilter_vqsr/scripts/hapmap_3.3.hg38.vcf.gz",
        omni = "/scratch/tphung3/PopulationReferenceAlignment/analyses/compare_hardfilter_vqsr/scripts/1000G_omni2.5.hg38.vcf.gz",
        thousandG = "/scratch/tphung3/PopulationReferenceAlignment/analyses/compare_hardfilter_vqsr/scripts/1000G_phase1.snps.high_confidence.hg38.vcf.gz",
        dbsnp = "/scratch/tphung3/PopulationReferenceAlignment/analyses/compare_hardfilter_vqsr/scripts/dbsnp_138.hg38.vcf.gz"
    output:
        recal = "vqsr/chrX_output.recal",
        tranches = "vqsr/chrX_output.tranches"
    params:
        gatk = gatk_path
    shell:
        """{params.gatk} --java-options "-Xmx16g" VariantRecalibrator """
        """-R {input.ref} -V {input.vcf}  """
        """--resource:hapmap,known=false,training=true,truth=true,prior=15.0 {input.hapmap} """
        """--resource:omni,known=false,training=true,truth=false,prior=12.0 {input.omni} """
        """--resource:1000G,known=false,training=true,truth=false,prior=10.0 {input.thousandG} """
        """--resource:dbsnp,known=true,training=false,truth=false,prior=2.0 {input.dbsnp} """
        """-an QD -an MQ -an MQRankSum -an ReadPosRankSum -an FS -an SOR """ #note: A USER ERROR has occurred: Bad input: Values for InbreedingCoeff annotation not detected for ANY training variant in the input callset. VariantAnnotator may be used to add these annotations
        """-mode SNP """
        """-O {output.recal} """
        """--tranches-file {output.tranches} """

rule gatk_applyvqsr_chrX:
    input:
        ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
        vcf = "genotyped_vcfs/GRCh38.p12.genome.XXonly.chrX.gatk.called.raw.vcf.gz",
        tranches = "vqsr/chrX_output.tranches",
        recal = "vqsr/chrX_output.recal"
    output:
        "vqsr/chrX.gatk.called.vqsr.vcf.gz"
    params:
        gatk = gatk_path
    shell:
        """{params.gatk} --java-options "-Xmx16g" ApplyVQSR """
        """-R {input.ref} """
        """-V {input.vcf} """
        """-O {output} """
        """--truth-sensitivity-filter-level 99.0 """
        """--tranches-file {input.tranches} """
        """--recal-file {input.recal} """
        """-mode SNP """

rule gatk_selectvariants_chrX:
    input:
        ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
        vcf = "vqsr/chrX.gatk.called.vqsr.vcf.gz"
    output:
        "vqsr/chrX.gatk.called.vqsr.sv.vcf.gz"
    params:
        gatk = gatk_path
    shell:
        """{params.gatk} --java-options "-Xmx16g" SelectVariants """
        """-R {input.ref} """
        """-V {input.vcf} """
        """--exclude-filtered """
        """-O {output} """

#----------------------------------------
# Further processing VCF
# 1. Restrict to biallelic sites
# 2. Subset VCF files for each individual
# 3. Keep only the heterozygous sites
# Do this for chr8 and chrX
#----------------------------------------
rule gatk_selectbiallelic_vqsr:
    input:
        ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
        vcf = "vqsr/chrX.gatk.called.vqsr.sv.vcf.gz"
    output:
        "vqsr/chrX.gatk.called.vqsr.sv.biallelic.vcf.gz"
    params:
        gatk = gatk3_path
    shell:
        """java -jar {params.gatk} """
        """-T SelectVariants """
        """-R {input.ref} """
        """-V {input.vcf} """
        """-o {output} """
        """-restrictAllelesTo BIALLELIC """

# rule subset_individuals_vqsr:
#     input:
#         "vqsr/chrX.gatk.called.vqsr.sv.biallelic.vcf.gz"
#     output:
#         "vqsr/chrX.gatk.called.vqsr.sv.biallelic.{sample}.vcf"
#     params:
#         bcftools = bcftools_path,
#         sample = "{sample}"
#     shell:
#         """{params.bcftools} view -s {params.sample} {input} > {output}"""

# After subsetting for each individual. In some individuals,
# the genotypes could be homozygous for the reference. This next rule is to remove these sites.
rule gatk_selectheterozygous:
    input:
        ref = "/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa",
        vcf = "vqsr/chrX.gatk.called.vqsr.sv.biallelic.{sample}.vcf"
    output:
        "vqsr/chrX.gatk.called.vqsr.sv.biallelic.{sample}.het.vcf"
    params:
        gatk = gatk3_path
    shell:
        """java -jar {params.gatk} """
        """ -T SelectVariants """
        """-R {input.ref} """
        """-V {input.vcf} """
        """-o {output} """
        """-select "AC == 1" """
