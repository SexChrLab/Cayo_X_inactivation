# In this script, I am returning the positions that are completely skewed across all tissues for the same individual
import os

FILES_DIR = r'c://Users/tuyen/Documents/postdoc_asu/projects/Cayo_x_inactivation/whole_X_inactivation/results/phase_whole_X/minDepth10/PT104270/'

def get_files():
    return [os.path.join(FILES_DIR, f) for f in os.listdir(FILES_DIR) if f.endswith('complete_skewed.tsv')]

def return_position(filename):
    with open(filename, 'r') as f:
        return set([line.rstrip().split('\t')[0] for line in f])

def main():
    files = get_files()
    positions = list(map(return_position, files))

    # for i in positions:
    #     print (i)

    print (set.intersection(positions[0], positions[1], positions[2], positions[3], positions[4]))

main()