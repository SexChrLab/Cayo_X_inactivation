import os

configfile: "GTEx_config.json"

temp_directory = "temp/"
adapter_path = "/scratch/tphung3/Cayo_x_inactivation/misc/adapter_sequence.fa"

rule all:
    input: #merge bam files
        expand("processed_bams/rna/{sample}.GRCh38.p12.genome.XXonly.sorted.merged.bam.bai", sample=config["rna"])
    input: #read mapping
        expand("processed_bams/rna/{sample}.GRCh38.p12.genome.XXonly.sorted.bam.bai", sample=config["rna_read_group_identifier"]),
        expand("bam_stats/rna/{sample}.GRCh38.p12.genome.XXonly.rna.sorted.stats", sample=config["rna_read_group_identifier"])
    input: #multiqc after trimming
        "multiqc_rna_trimmed/multiqc_report.html"
    input: #multiqc before trimming
        "multiqc_rna/multiqc_report.html"

rule fastqc_analysis_rna:
    input:
        fq_1 = lambda wildcards: os.path.join(config[wildcards.sample]["fq_path"], config[wildcards.sample]["fq_1"]),
        fq_2 = lambda wildcards: os.path.join(config[wildcards.sample]["fq_path"], config[wildcards.sample]["fq_2"])
    output:
        "fastqc_rna/{sample}_1_fastqc.html",
        "fastqc_rna/{sample}_2_fastqc.html"
    shell:
        """
        PERL5LIB=/home/tphung3/softwares/miniconda3/envs/epitopepipeline/lib/site_perl/5.26.2/ fastqc -o fastqc_rna {input.fq_1}
        PERL5LIB=/home/tphung3/softwares/miniconda3/envs/epitopepipeline/lib/site_perl/5.26.2/ fastqc -o fastqc_rna {input.fq_2}
        """

rule multiqc_analysis_rna:
    input:
        expand(
        "fastqc_rna/{sample}_{read}_fastqc.html",
        sample=config["rna_read_group_identifier"], read=["1", "2"])
    output:
        "multiqc_rna/multiqc_report.html"
    shell:
        "export LC_ALL=en_US.UTF-8 && export LANG=en_US.UTF-8 && "
        "multiqc --interactive -f -o multiqc_rna fastqc_rna"

rule trim_adapters_paired_bbduk_rna:
	input:
		fq_1 = lambda wildcards: os.path.join(config[wildcards.sample]["fq_path"], config[wildcards.sample]["fq_1"]),
		fq_2 = lambda wildcards: os.path.join(config[wildcards.sample]["fq_path"], config[wildcards.sample]["fq_2"])
	output:
		out_fq_1 = "trimmed_fastqs_rna/{sample}_trimmed_read1.fastq.gz",
		out_fq_2 = "trimmed_fastqs_rna/{sample}_trimmed_read2.fastq.gz"
	params:
		adapter = adapter_path
	threads:
		2
	shell:
		"bbduk.sh -Xmx3g in1={input.fq_1} in2={input.fq_2} "
		"out1={output.out_fq_1} out2={output.out_fq_2} "
		"ref={params.adapter} ktrim=r k=21 mink=11 hdist=2 tbo tpe "
		"qtrim=rl trimq=15 minlen=55 maq=20"

rule fastqc_analysis_trimmed_rna:
	input:
		fq_1 = "trimmed_fastqs_rna/{sample}_trimmed_read1.fastq.gz",
		fq_2 = "trimmed_fastqs_rna/{sample}_trimmed_read2.fastq.gz"
	output:
		html1 = "fastqc_trimmed_rna/{sample}_trimmed_read1_fastqc.html",
		html2 = "fastqc_trimmed_rna/{sample}_trimmed_read2_fastqc.html"
	shell:
		"PERL5LIB=/home/tphung3/softwares/miniconda3/envs/epitopepipeline/lib/site_perl/5.26.2/ fastqc -o fastqc_trimmed_rna {input.fq_1} {input.fq_2}"

rule multiqc_analysis_trimmed_rna:
    input:
        expand(
        "fastqc_trimmed_rna/{sample}_trimmed_read{read}_fastqc.html",
        sample=config["rna_read_group_identifier"], read=["1", "2"])
    output:
        "multiqc_rna_trimmed/multiqc_report.html"
    shell:
        "export LC_ALL=en_US.UTF-8 && export LANG=en_US.UTF-8 && "
        "multiqc --interactive -f -o multiqc_rna_trimmed fastqc_trimmed_rna"

rule hisat2_reference_index_females_dna:
	input:
		"/scratch/tphung3/PlacentaSexDiff/batch_1_exome_processing/refs/GRCh38.p12.genome.XXonly.fa"
	output:
		expand(
			"hisat2/GRCh38.p12.genome.XXonly.{suffix}.ht2",
			suffix=[
				"1", "2", "3", "4", "5", "6", "7", "8"])
	shell:
		"hisat2-build {input} hisat2/GRCh38.p12.genome.XXonly"

# Read mapping rules
rule hisat2_map_reads:
	input:
		idx = expand(
			"hisat2/GRCh38.p12.genome.XXonly.{suffix}.ht2",
			suffix=["1", "2", "3", "4", "5", "6", "7", "8"]),
		fq_1 = "trimmed_fastqs_rna/{sample}_trimmed_read1.fastq.gz",
		fq_2 = "trimmed_fastqs_rna/{sample}_trimmed_read2.fastq.gz"
	output:
		"processed_bams/rna/{sample}.GRCh38.p12.genome.XXonly.sorted.bam"
	threads:
		4
	params:
		threads = 4,
		id = lambda wildcards: config[wildcards.sample]["ID"],
		sm = lambda wildcards: config[wildcards.sample]["SM"],
		lb = lambda wildcards: config[wildcards.sample]["LB"],
		pu = lambda wildcards: config[wildcards.sample]["PU"],
		pl = lambda wildcards: config[wildcards.sample]["PL"]
	shell:
		"PERL5LIB=/home/tphung3/softwares/miniconda3/envs/epitopepipeline/lib/site_perl/5.26.2/ hisat2 -p {params.threads} --dta "
		"--rg-id {params.id} --rg SM:{params.sm} --rg LB:{params.lb} "
		"--rg PU:{params.pu} --rg PL:{params.pl} "
		"-x hisat2/GRCh38.p12.genome.XXonly "
		"-1 {input.fq_1} -2 {input.fq_2} | "
		"samtools sort -O bam -o {output}"

rule index_bam_rna:
	input:
		"processed_bams/rna/{sample}.GRCh38.p12.genome.XXonly.sorted.bam"
	output:
		"processed_bams/rna/{sample}.GRCh38.p12.genome.XXonly.sorted.bam.bai"
	shell:
		"samtools index {input}"

rule bam_stats_rna:
	input:
		"processed_bams/rna/{sample}.GRCh38.p12.genome.XXonly.sorted.bam"
	output:
		"bam_stats/rna/{sample}.GRCh38.p12.genome.XXonly.rna.sorted.stats"
	shell:
		"samtools stats {input} | grep ^SN | cut -f 2- > {output}"

rule merge_bams_rna:
	input:
		bams = lambda wildcards: expand(
			"processed_bams/rna/{sample}.GRCh38.p12.genome.XXonly.sorted.bam",
			sample=config["rna_samples"][wildcards.sample]),
		bais = lambda wildcards: expand(
			"processed_bams/rna/{sample}.GRCh38.p12.genome.XXonly.sorted.bam.bai",
			sample=config["rna_samples"][wildcards.sample])
	output:
		"processed_bams/rna/{sample}.GRCh38.p12.genome.XXonly.sorted.merged.bam"
	threads: 4
	params:
		threads = 4
	shell:
		"sambamba merge -t {params.threads} {output} {input.bams}"

rule index_merged_bams_rna:
    input:
        "processed_bams/rna/{sample}.GRCh38.p12.genome.XXonly.sorted.merged.bam"
    output:
        "processed_bams/rna/{sample}.GRCh38.p12.genome.XXonly.sorted.merged.bam.bai"
    shell:
        "samtools index {input}"
