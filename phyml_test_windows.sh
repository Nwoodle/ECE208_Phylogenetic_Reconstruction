start=$(date "+%s")
# {
# python replace.py _0_0 "" ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200.phylip ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip
# ./phyml.exe -m GTR -o n -d nt -i ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip -u ./S101/genetrees/01/bestMLestimatedgenetree/estimatedgenetre_200.gtr.rerooted.final.contracted.non -b -2 -n 10
# }&
# {
# python replace.py _0_0 "" ./S101/alignments/02/bestMLestimatedgenetree_200/all-genes_200.phylip ./S101/alignments/02/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip
# ./phyml.exe -m GTR -o n -d nt -i ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip -u ./S101/genetrees/01/bestMLestimatedgenetree/estimatedgenetre_200.gtr.rerooted.final.contracted.non -b -2 -n 10
# }&
# {
# python replace.py _0_0 "" ./S101/alignments/03/bestMLestimatedgenetree_200/all-genes_200.phylip ./S101/alignments/03/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip
# ./phyml.exe -m GTR -o n -d nt -i ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip -u ./S101/genetrees/01/bestMLestimatedgenetree/estimatedgenetre_200.gtr.rerooted.final.contracted.non -b -2 -n 10
# }&
# {
# python replace.py _0_0 "" ./S101/alignments/04/bestMLestimatedgenetree_200/all-genes_200.phylip ./S101/alignments/04/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip
# ./phyml.exe -m GTR -o n -d nt -i ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip -u ./S101/genetrees/01/bestMLestimatedgenetree/estimatedgenetre_200.gtr.rerooted.final.contracted.non -b -2 -n 10
# }&
# {
# python replace.py _0_0 "" ./S101/alignments/05/bestMLestimatedgenetree_200/all-genes_200.phylip ./S101/alignments/05/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip
# ./phyml.exe -m GTR -o n -d nt -i ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip -u ./S101/genetrees/01/bestMLestimatedgenetree/estimatedgenetre_200.gtr.rerooted.final.contracted.non -b -2 -n 10
# }&
# {
# python replace.py _0_0 "" ./S101/alignments/06/bestMLestimatedgenetree_200/all-genes_200.phylip ./S101/alignments/06/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip
# ./phyml.exe -m GTR -o n -d nt -i ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip -u ./S101/genetrees/01/bestMLestimatedgenetree/estimatedgenetre_200.gtr.rerooted.final.contracted.non -b -2 -n 10
# }&
# {
# python replace.py _0_0 "" ./S101/alignments/07/bestMLestimatedgenetree_200/all-genes_200.phylip ./S101/alignments/07/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip
# ./phyml.exe -m GTR -o n -d nt -i ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip -u ./S101/genetrees/01/bestMLestimatedgenetree/estimatedgenetre_200.gtr.rerooted.final.contracted.non -b -2 -n 10
# }&
# {
# python replace.py _0_0 "" ./S101/alignments/08/bestMLestimatedgenetree_200/all-genes_200.phylip ./S101/alignments/08/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip
# ./phyml.exe -m GTR -o n -d nt -i ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip -u ./S101/genetrees/01/bestMLestimatedgenetree/estimatedgenetre_200.gtr.rerooted.final.contracted.non -b -2 -n 10
# }&
# {
# python replace.py _0_0 "" ./S101/alignments/09/bestMLestimatedgenetree_200/all-genes_200.phylip ./S101/alignments/09/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip
# ./phyml.exe -m GTR -o n -d nt -i ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip -u ./S101/genetrees/01/bestMLestimatedgenetree/estimatedgenetre_200.gtr.rerooted.final.contracted.non -b -2 -n 10
# }&
{
python replace.py _0_0 "" ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200.phylip ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip
./phyml.exe -m GTR -o n -d nt -i ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200_replaced.phylip -u ./S101/genetrees/01/bestMLestimatedgenetree/estimatedgenetre_200.gtr.rerooted.final.contracted.non -b -2 -n 3
}&
{
python replace.py _0_0 "" ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200_3.phylip ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200_3_replaced.phylip
./phyml.exe -m GTR -o n -d nt -i ./S101/alignments/01/bestMLestimatedgenetree_200/all-genes_200_3_replaced.phylip -u ./S101/genetrees/01/bestMLestimatedgenetree/estimatedgenetre_200.gtr.rerooted.final.contracted_3.non -b -2
}
now=$(date "+%s")
time=$((now-start))
echo "time used:$time seconds"