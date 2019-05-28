for folder in $(ls S101/alignments)
# for folder in 01 02 03
do
    for contract in _200 _400 _800 _1600
    do
    {
        if [ "$contract" = "_1600" ]
        then
            aligncontract=""
        else
            aligncontract=$contract
        fi
        echo $folder $aligncontract
        python replace.py _0_0 "" ./S101/alignments/$folder/bestMLestimatedgenetree$aligncontract/all-genes$aligncontract.phylip ./S101/alignments/$folder/bestMLestimatedgenetree$aligncontract/all-genes_processed$aligncontract.phylip
        ./PhyML_linux -m GTR -o n -d nt -i ./S101/alignments/$folder/bestMLestimatedgenetree$aligncontract/all-genes_processed$aligncontract.phylip -u ./S101/genetrees/$folder/bestMLestimatedgenetree/estimatedgenetre$contract.gtr.rerooted.final.contracted.non -b -2 -n 1000
    }&
    done
done

