from arnie.mfe import mfe
from Bio import SeqIO
from sys import argv
import pandas as pd
from Levenshtein import distance as edit_distance
from scipy.cluster.hierarchy import fclusterdata

input_file = argv[1]
output_file = argv[2]
results = []

from arnie.utils import convert_dotbracket_to_bp_list

def get_stems(struct):
    bp_list = convert_dotbracket_to_bp_list(struct, allow_pseudoknots=True)
    bp_list_r = sorted(bp_list, reverse=True, key=lambda x: x[1])
    current_test = []
    clusters = []
    while bp_list != []:
        current_test.append(bp_list.pop(0))
        not_in=True
        for i in range(len(bp_list_r)):
            if bp_list_r[i:i+len(current_test)] == current_test:
                not_in = False
                break
        if not_in:
            clusters.append(current_test[:-1])
            current_test = current_test[-1:]
    clusters.append(current_test)
    new_struct = '.'*len(struct)
    for i,cluster in enumerate(clusters):
        for a,b in cluster:
            new_struct = new_struct[:a] + chr(65+i) + new_struct[a+1:b] +chr(65+i) + new_struct[b+1:]
    return new_struct

seqs = list(SeqIO.parse(input_file, "fasta"))
for seq in seqs:
    struct = mfe(seq.seq,package="eternafold")
    bp_list = convert_dotbracket_to_bp_list(struct, allow_pseudoknots=True)
    stems = get_stems(struct)
    stem_names = "".join([x if x!="." else y.lower() for x,y in zip(stems,seq)])
    stemA, rest = stems.rsplit("A",
    results.append([seq.name,str(seq.seq),struct,stems,stem_names])
seqs = [str(seq.seq) for seq in seqs]
next_cluster = 0
cluster_results = []
cluster_id = {}
for i,seqA in enumerate(seqs):
    found = False
    for j in range(i):
        seqB = seqs[j]
        if edit_distance(seqA,seqB) < len(seqA)*0.3:
            cluster_results.append(cluster_id[seqB])
            cluster_id[seqA] = cluster_id[seqB]
            found = True
            break
    if not found:
        cluster_results.append(next_cluster)
        cluster_id[seqA] = next_cluster
        next_cluster += 1

print(cluster_results)
#print(fclusterdata(seqs,5,metric=edit_distance))
df = pd.DataFrame(results,columns=['name','sequence','eternafold_structure','stems','stem_names'])
df['cluster'] = cluster_results
df.to_csv(output_file,index=False)
