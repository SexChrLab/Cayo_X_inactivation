# In this script, I will generate the information for each read group in a json format so I can use this as part of the config file for the snakemake pipeline

import os
import json
from collections import defaultdict

with open('/scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/data_processing/GTEx_config.json') as f:
    data = json.load(f)

dna_read_group_identifier = defaultdict(list)
dna_samples = {"dna_samples": defaultdict(list)}

for filename in os.listdir('/scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/data_processing/read_groups/dna/'):
    with open(os.path.join('/scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/data_processing/read_groups/dna/', filename), 'r') as file:
        for line in file:
            read_group_info = {}
            items = line.rstrip('\n').split('\t')
            # print (items)
            id = items[1].split(':')[1]
            sm = items[7].split(':')[1]
            lb = items[4].split(':')[1]
            pu = items[3].split(':')[1]
            pl = items[2].split(':')[1]

            key = sm + '_' + id
            fq_path = '/scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/data_processing/strip_reads/' + sm + '/fastq/'
            fq_1 = sm + '_' + id + '_1.fastq.gz'
            fq_2 = sm + '_' + id + '_2.fastq.gz'

            dna_read_group_identifier["dna_read_group_identifier"].append(key)

            read_group_info[key] = {
                'fq_path': fq_path,
                'fq_1': fq_1,
                'fq_2': fq_2,
                'ID': id,
                'SM': sm,
                'LB': lb,
                'PU': pu,
                'PL': pl
            }

            data.update(read_group_info)

            with open('/scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/data_processing/GTEx_config.json', 'w') as f:
                json.dump(data, f)

            dna_samples["dna_samples"][sm].append(key)

rna_read_group_identifier = defaultdict(list)
rna_samples = {"rna_samples": defaultdict(list)}

for filename in os.listdir('/scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/data_processing/read_groups/rna/'):
    with open(os.path.join('/scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/data_processing/read_groups/rna/', filename), 'r') as file:
        for line in file:
            read_group_info = {}
            items = line.rstrip('\n').split('\t')
            # print (items)
            id = items[1].split(':')[1]
            sm = items[8].split(':')[1]
            lb = items[4].split(':')[1]
            pu = items[3].split(':')[1]
            pl = items[2].split(':')[1]

            key = sm + '_' + id
            fq_path = '/scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/data_processing/strip_reads/' + sm + '/fastq/'
            fq_1 = sm + '_' + id + '_1.fastq.gz'
            fq_2 = sm + '_' + id + '_2.fastq.gz'

            rna_read_group_identifier["rna_read_group_identifier"].append(key)

            read_group_info[key] = {
                'fq_path': fq_path,
                'fq_1': fq_1,
                'fq_2': fq_2,
                'ID': id,
                'SM': sm,
                'LB': lb,
                'PU': pu,
                'PL': pl
            }

            data.update(read_group_info)

            with open('/scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/data_processing/GTEx_config.json', 'w') as f:
                json.dump(data, f)

            rna_samples["rna_samples"][sm].append(key)

data.update(dna_read_group_identifier)
data.update(dna_samples)

data.update(rna_read_group_identifier)
data.update(rna_samples)

with open('/scratch/tphung3/Cayo_x_inactivation/GTEx/GTEx_v8/data_processing/GTEx_config.json', 'w') as f:
    json.dump(data, f)

