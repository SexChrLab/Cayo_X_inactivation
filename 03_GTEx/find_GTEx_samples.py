# In this script, I want to find GTEx ID that has rna-seq data for 6 tissues: Heart, Ovary, Liver, Pituitary, Adrenal, and Lung

heart_id = {}
with open("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/SraRunTable_GTEx_females_Heart.txt", "r") as f:
    for line in f:
        items = line.rstrip('\n').split(',')
        donor_id = items[7].split('-')
        donor_id_str = donor_id[0] + '-' + donor_id[1]
        heart_id[donor_id_str] = items[0]

ovary_id = {}
with open("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/SraRunTable_GTEx_females_Ovary.txt", "r") as f:
    for line in f:
        items = line.rstrip('\n').split(',')
        donor_id = items[7].split('-')
        donor_id_str = donor_id[0] + '-' + donor_id[1]
        ovary_id[donor_id_str] = items[0]

liver_id = {}
with open("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/SraRunTable_GTEx_females_Liver.txt", "r") as f:
    for line in f:
        items = line.rstrip('\n').split(',')
        donor_id = items[7].split('-')
        donor_id_str = donor_id[0] + '-' + donor_id[1]
        liver_id[donor_id_str] = items[0]


pituitary_id = {}
with open("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/SraRunTable_GTEx_females_Pituitary.txt", "r") as f:
    for line in f:
        items = line.rstrip('\n').split(',')
        donor_id = items[7].split('-')
        donor_id_str = donor_id[0] + '-' + donor_id[1]
        pituitary_id[donor_id_str] = items[0]

adrenal_id = {}
with open("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/SraRunTable_GTEx_females_Adrenal.txt", "r") as f:
    for line in f:
        items = line.rstrip('\n').split(',')
        donor_id = items[7].split('-')
        donor_id_str = donor_id[0] + '-' + donor_id[1]
        adrenal_id[donor_id_str] = items[0]

lung_id = {}
with open("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/SraRunTable_GTEx_females_Lung.txt", "r") as f:
    for line in f:
        items = line.rstrip('\n').split(',')
        donor_id = items[7].split('-')
        donor_id_str = donor_id[0] + '-' + donor_id[1]
        lung_id[donor_id_str] = items[0]


# samples_id = open("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_ids_rna_in_6_tissues.txt", "w")
# heart_id_srr = open("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_ids_rna_in_6_tissues_heart.txt", "w")

for i in heart_id:
    if i in ovary_id and i in liver_id and i in pituitary_id and i in adrenal_id and i in lung_id:
        print (heart_id[i])
