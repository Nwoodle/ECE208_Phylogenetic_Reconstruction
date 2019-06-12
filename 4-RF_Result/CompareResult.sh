#!/bin/bash
ref_tree=S101/speciestrees/01/s_tree.trees
common=newick_astral_result/astral_newicked_
outdir=result_eval/cmp_astral_newicked_
i1=_all_genes_
i2=_tree_top
i22=tree_top
i3=.txt
o1=test.num_tree_
o2=.seq_len_
o3=.threshold_
o4=.txt

#for ntree in 50 200 500 1000
#do
#    for thres in 0.1 0.01 0.001 0.2 0.02 0.3 0.4 0.5 0.05 0.005
#    do
#        for seq_len in 200 400 800
#        do
#            inf_tree=$common$thres$i1$seq_len$i2$ntree$i3
#            output=$outdir$thres$i1$seq_len$i2$ntree$i3
#            java -jar TreeCmp/bin/TreeCmp.jar -r $ref_tree -d rf -i $inf_tree -o $output
#        done
#    done
#done

seq_len=1600
for ntree in 50 200 500 1000
do
    for thres in 0.1 0.01 0.001 0.2 0.02 0.3 0.4 0.5 0.05 0.005
    do
        inf_tree=$common$thres$i1$i22$ntree$i3
        output=$outdir$thres$i1$seq_len$i2$ntree$i3
        java -jar TreeCmp/bin/TreeCmp.jar -r $ref_tree -d rf -i $inf_tree -o $output
    done
done


