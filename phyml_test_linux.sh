python replace.py _0_0 "" ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200.phylip 。/S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip
./PhyML_linux -m GTR -o n -d nt -i ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip -u ./S101/genetrees/01/bestMLestimatedgenetree/estimatedgenetre_200.gtr.rerooted.final.contracted.non -b -2 -n 1000