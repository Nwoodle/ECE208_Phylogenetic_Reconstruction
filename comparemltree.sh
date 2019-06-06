#!/bin/bash
seq_len=200
thres=3
ref_tree=S101/speciestrees/01/s_tree.trees
t1=S101/speciestrees/01/bestMLestimatedgenetree/astral.4.11.2.estimatedgenetre_
t2=.gtr.rerooted.final.contracted.
t3=.numG
t4=.speces_tree.tree
o1=baseline_eval/cmp_mltree_
o2=_all_genes_
o3=_tree_top
o4=.txt

for ntree in 50 200 500 1000
do
    for seq_len in 200 400 800 1600
    do
        for thres in 0 3 5 7 10 20 33 50 75
        do
            ml_tree=$t1$seq_len$t2$thres$t3$ntree$t4
            output=$o1$thres$o2$seq_len$o3$ntree$o4
            java -jar TreeCmp/bin/TreeCmp.jar -r $ref_tree -d rf -i $ml_tree -o $output
        done
    done
done


