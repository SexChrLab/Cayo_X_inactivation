# In this script, we want to tabulate the number of variants that are heterozygous in mom but are homozygous in grandmom

import sys

grandmother_id = sys.argv[1]
mother_id = sys.argv[2]
tissue = sys.argv[3]


grandmother_homo_genotypes = {}

with open("/scratch/tphung3/Cayo_x_inactivation/genotyped_vcfs/mmul8.chrx.gatk.called.hard.filter.biallelics." + grandmother_id + ".vcf", "r") as f:
    for line in f:
        if not line.startswith("#"):
            items = line.rstrip("\n").split("\t")
            genotype = items[9].split(":")[0]
            if genotype == "0/0" or genotype == "0|0":
                grandmother_homo_genotypes[items[1]] = "homo_ref"
            elif genotype == "2/2" or genotype == "2|2":
                grandmother_homo_genotypes[items[1]] = "homo_alt"


mother_het_n = 0
mother_het_grandmother_homo_n = 0
mother_het_grandmother_homo_positions = set()
with open("/scratch/tphung3/Cayo_x_inactivation/genotyped_vcfs/mmul8.chrx.gatk.called.hard.filter.biallelics." + mother_id + "_het.vcf", "r") as f:
    for line in f:
        if not line.startswith("#"):
            mother_het_n += 1
            items = line.rstrip("\n").split("\t")
            if items[1] in grandmother_homo_genotypes:
                mother_het_grandmother_homo_n += 1
                mother_het_grandmother_homo_positions.add(items[1])

mother_het_expressed_grandmother_homo = 0
maternal = 0
paternal = 0
with open("/scratch/tphung3/Cayo_x_inactivation/asereadcounter/post_asereadcounter_processing/minDepth10/" + mother_id + "/" + mother_id + "_" + tissue + "_filter_for_hardfilter_biallelic_hets_rmsameRefAlt.tsv", "r") as f:
    for line in f:
        if not line.startswith("contig"):
            items = line.rstrip("\n").split("\t")
            if items[1] in mother_het_grandmother_homo_positions:
                mother_het_expressed_grandmother_homo += 1
                ref_ratio = float(items[5])/float(items[7])
                alt_ratio = float(items[6])/float(items[7])
                if ref_ratio > alt_ratio:
                    if grandmother_homo_genotypes[items[1]] == "homo_ref":
                        maternal += 1
                    else:
                        paternal += 1
                else:
                    if grandmother_homo_genotypes[items[1]] == "homo_alt":
                        maternal += 1
                    else:
                        paternal += 1

print ("mother_het_n", mother_het_n)
print ("mother_het_grandmother_homo_n", mother_het_grandmother_homo_n)
print ("mother_het_grandmother_homo_positions", len(mother_het_grandmother_homo_positions))
print ("mother_het_expressed_grandmother_homo", mother_het_expressed_grandmother_homo)
print ("maternal", maternal)
print ("paternal", paternal)





