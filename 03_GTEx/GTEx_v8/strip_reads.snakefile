# Workflow for extracting FASTQ read files from BAM alignment files with
# XYAlign --STRIP_READS.

configfile: "TCGA_LIHC_v1.4.config.json"

# Tools
XYALIGN = "/home/hnatri/XYalign-noY_support/xyalign/xyalign.py" # Path to xyalign.py

# Reference genome files: XX with Y chromosome masked, XY with both X and Y
XY_REF = config["GRCh37_lite_ref_path"]
XY_REF_NAME = config["GRCh37_lite_ref_prefix"]
MASK_BED = "/home/hnatri/eQTL/QC/mask.bed"

# Directories
BAM_DIR = "/mnt/storage/CANCER_DOWNLOADS/LIHCFILES/"
RESULT_DIR = "/mnt/storage/CANCER_DOWNLOADS/PROCESSED/WES/xyalign_strip_reads/" # path to result directory
FASTQ_DIR = "/mnt/storage/CANCER_DOWNLOADS/PROCESSED/WES/stripped_fastqs/"

SAMPLES = config["TCGA_LIHC_WES_samples"]

rule all:
	input:
		expand(RESULT_DIR + "{sample}_WES_XYAlign_strip_reads/logfiles/{sample}_xyalign.log", RESULT_DIR=RESULT_DIR, sample=SAMPLES),
		#expand(FASTQ_DIR + "{sample}_WES_stripped_fq_1.fastq", FASTQ_DIR=FASTQ_DIR, sample=SAMPLES),
		#expand(FASTQ_DIR + "{sample}_WES_stripped_fq_2.fastq", FASTQ_DIR=FASTQ_DIR, sample=SAMPLES),

rule strip_reads:
	input:
		BAM = lambda wildcards: BAM_DIR + config[wildcards.sample]["WES_GRCh37-lite_alignment_dir"][0] + "/" + config[wildcards.sample]["WES_GRCh37-lite_alignment"][0]
	output:
		LOG = RESULT_DIR + "{sample}_WES_XYAlign_strip_reads/logfiles/{sample}_xyalign.log"
	params:
		DIR = RESULT_DIR + "{sample}_WES_XYAlign_strip_reads/",
		SAMPLE_ID = "{sample}",
		cpus="4",
		xmx="4g",
		compression="3"
	message: "Stripping reads from {input.BAM} with XYAlign --STRIP_READS"
	shell:
		"set +u && source activate xyalign_environment && set -u && python {XYALIGN} --STRIP_READS --ref null --bam {input.BAM} --cpus {params.cpus} --xmx {params.xmx} --sample_id {params.SAMPLE_ID} --output_dir {params.DIR} --chromosomes ALL"

#TODO: rename and move stripped fastqs

#rule rename_fastqs:

#rule move_fastqs:
#   input:
#   output:
#   message:
#   shell:
#	   """
#	   mv STRIPPED_FQ FQ_DIR
#	   """
