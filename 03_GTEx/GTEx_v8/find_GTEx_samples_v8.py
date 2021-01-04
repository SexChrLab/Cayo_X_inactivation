females_id = []
with open("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/GTEx_Analysis_v8_Annotations_SubjectPhenotypesDS.txt", "r") as f:
    for line in f:
        if not line.startswith("SUBJID"):
            items = line.rstrip("\n").split("\t")
            if items[1] == "2":
                females_id.append(items[0])

heart_females_id = {}
with open("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/GTEx_Analysis_v8_Annotations_SampleAttributesDS_heart.txt", "r") as f:
    for line in f:
        items = line.rstrip("\n").split("\t")
        sample_id = items[0].split("-")
        sample_id_short = sample_id[0] + "-" + sample_id[1]
        if sample_id_short in females_id:
            heart_females_id[sample_id_short] = items[0]

liver_females_id = {}
with open("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/GTEx_Analysis_v8_Annotations_SampleAttributesDS_liver.txt", "r") as f:
    for line in f:
        items = line.rstrip("\n").split("\t")
        sample_id = items[0].split("-")
        sample_id_short = sample_id[0] + "-" + sample_id[1]
        if sample_id_short in females_id:
            liver_females_id[sample_id_short] = items[0]

lung_females_id = {}
with open("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/GTEx_Analysis_v8_Annotations_SampleAttributesDS_lung.txt", "r") as f:
    for line in f:
        items = line.rstrip("\n").split("\t")
        sample_id = items[0].split("-")
        sample_id_short = sample_id[0] + "-" + sample_id[1]
        if sample_id_short in females_id:
            lung_females_id[sample_id_short] = items[0]

ovary_females_id = {}
with open("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/GTEx_Analysis_v8_Annotations_SampleAttributesDS_ovary.txt", "r") as f:
    for line in f:
        items = line.rstrip("\n").split("\t")
        sample_id = items[0].split("-")
        sample_id_short = sample_id[0] + "-" + sample_id[1]
        if sample_id_short in females_id:
            ovary_females_id[sample_id_short] = items[0]

pituitary_females_id = {}
with open("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/GTEx_Analysis_v8_Annotations_SampleAttributesDS_pituitary.txt", "r") as f:
    for line in f:
        items = line.rstrip("\n").split("\t")
        sample_id = items[0].split("-")
        sample_id_short = sample_id[0] + "-" + sample_id[1]
        if sample_id_short in females_id:
            pituitary_females_id[sample_id_short] = items[0]

adrenal_females_id = {}
with open("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/GTEx_Analysis_v8_Annotations_SampleAttributesDS_adrenal.txt", "r") as f:
    for line in f:
        items = line.rstrip("\n").split("\t")
        sample_id = items[0].split("-")
        sample_id_short = sample_id[0] + "-" + sample_id[1]
        if sample_id_short in females_id:
            adrenal_females_id[sample_id_short] = items[0]

# outfile = open("c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/GTEx/GTEx_v8/sample_ids_in_6_tissues.txt", "w")

for i in heart_females_id:
    if i in liver_females_id and i in lung_females_id and i in ovary_females_id and i in pituitary_females_id and i in adrenal_females_id:
        print (i, adrenal_females_id[i])
