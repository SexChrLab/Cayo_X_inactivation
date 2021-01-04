# ----------
# What: This script phases whole X chromosome
# ----------

import random

def tabulate_nsites_biased_expn(fn):
    """
    This function takes in the path to the tissue file.
    This function returns a ratio denoting the number of sites that have biased expression (defined as >0.8).
    """
    # nsites = 0
    nsites_biased_expn = 0
    with open(fn, 'r') as f:
        for line in f:
            if line.startswith('X'):
                # nsites += 1
                items = line.rstrip('\n').split('\t')
                if float(items[5])/float(items[7]) > 0.8 or float(items[6])/float(items[7]) > 0.8:
                    nsites_biased_expn += 1

    return nsites_biased_expn

def phasing(placenta1_fn):
    pos = []
    hap_1 = ''
    with open(placenta1_fn, 'r') as f:
        for line in f:
            if line.startswith("X"):
                items = line.rstrip("\n").split("\t")
                if float(items[6])/float(items[7]) > 0.5:
                    pos.append(items[1])
                    hap_1 += items[4]
                elif float(items[5])/float(items[7]) > 0.5:
                    pos.append(items[1])
                    hap_1 += items[3]
                else:
                    pos.append(items[1])
                    alleles = [items[3], items[4]]
                    hap_1 += random.choice(alleles)


    return pos, hap_1

def find_ratio_for_hap(tissue_fn, pos, hap):
    out = {}
    with open(tissue_fn, 'r') as f:
        for line in f:
            if line.startswith("X"):
                items = line.rstrip("\n").split("\t")
                if items[1] in pos:
                    idx = pos.index(items[1])
                    if items[4] == hap[idx]:
                        # print(items[1], idx, hap[idx])
                        out[items[1]] = (float(items[6]), float(items[7]), float(items[6])/float(items[7]))
                    else:
                        out[items[1]] = (float(items[5]), float(items[7]), float(items[5])/float(items[7]))
    return out


def main():

    # Figure out which tissue for each sample to base phasing off from. Note that these are for samples with 6 tissues
    heart_nsites_biased_expn = tabulate_nsites_biased_expn(snakemake.input['heart'])
    liver_nsites_biased_expn = tabulate_nsites_biased_expn(snakemake.input['liver'])
    adrenal_nsites_biased_expn = tabulate_nsites_biased_expn(snakemake.input['adrenal'])
    pituitary_nsites_biased_expn = tabulate_nsites_biased_expn(snakemake.input['pituitary'])
    lung_nsites_biased_expn = tabulate_nsites_biased_expn(snakemake.input['lung'])

    fn=''
    tissues_nsites_biased_expn = {'heart': heart_nsites_biased_expn, 'liver': liver_nsites_biased_expn, 'adrenal': adrenal_nsites_biased_expn, 'pituitary': pituitary_nsites_biased_expn, 'lung': lung_nsites_biased_expn}

    # print (tissues_nsites_biased_expn)

    max_key = max(tissues_nsites_biased_expn, key=lambda k: tissues_nsites_biased_expn[k])

    if max_key == 'heart':
        fn=snakemake.input['heart']
    elif max_key == 'liver':
        fn = snakemake.input['liver']
    elif max_key == 'adrenal':
        fn = snakemake.input['adrenal']
    elif max_key == 'pituitary':
        fn = snakemake.input['pituitary']
    else:
        fn = snakemake.input['lung']

    # print (fn)

    pos, hap_1 = phasing(fn)
    heart_out = find_ratio_for_hap(snakemake.input['heart'], pos, hap_1)  # sys.argv 5 is hap_1 or hap_2
    liver_out = find_ratio_for_hap(snakemake.input['liver'], pos, hap_1)
    adrenal_out = find_ratio_for_hap(snakemake.input['adrenal'], pos, hap_1)
    pituitary_out = find_ratio_for_hap(snakemake.input['pituitary'], pos, hap_1)
    lung_out = find_ratio_for_hap(snakemake.input['lung'], pos, hap_1)

    heart_out_fn = open(snakemake.output['heart'], 'w')
    for k, v in heart_out.items():
        out = [str(k), str(v[0]), str(v[1]), str(v[2])]
        print ("\t".join(out), file=heart_out_fn)

    liver_out_fn = open(snakemake.output['liver'], 'w')
    for k, v in liver_out.items():
        out = [str(k), str(v[0]), str(v[1]), str(v[2])]
        print ("\t".join(out), file=liver_out_fn)

    adrenal_out_fn = open(snakemake.output['adrenal'], 'w')
    for k, v in adrenal_out.items():
        out = [str(k), str(v[0]), str(v[1]), str(v[2])]
        print ("\t".join(out), file=adrenal_out_fn)

    pituitary_out_fn = open(snakemake.output['pituitary'], 'w')
    for k, v in pituitary_out.items():
        out = [str(k), str(v[0]), str(v[1]), str(v[2])]
        print ("\t".join(out), file=pituitary_out_fn)

    lung_out_fn = open(snakemake.output['lung'], 'w')
    for k, v in lung_out.items():
        out = [str(k), str(v[0]), str(v[1]), str(v[2])]
        print ("\t".join(out), file=lung_out_fn)

main()
