start=$(date "+%s")
count=0
for folder in $(ls S101/alignments)
# for folder in 01 02 03
do
    for contract in _200 _400 _800 _1600
    do
    let "count++"
    if [ "$count" = "10" ]
    then
        count=0
        {
            if [ "$contract" = "_1600" ]
            then
                aligncontract=""
            else
                aligncontract=$contract
            fi
            python replace.py _0_0 "" ./S101/alignments/$folder/bestMLestimatedgenetree$aligncontract/all-genes$aligncontract.phylip ./S101/alignments/$folder/bestMLestimatedgenetree$aligncontract/all-genes_processed$aligncontract.phylip
            ./phyml.exe -m GTR -o n -d nt -i ./S101/alignments/$folder/bestMLestimatedgenetree$aligncontract/all-genes_processed$aligncontract.phylip -u ./S101/genetrees/$folder/bestMLestimatedgenetree/estimatedgenetre$contract.gtr.rerooted.final.contracted.non -b -2 -n 1000
        }
    else
        {
            if [ "$contract" = "_1600" ]
            then
                aligncontract=""
            else
                aligncontract=$contract
            fi
            python replace.py _0_0 "" ./S101/alignments/$folder/bestMLestimatedgenetree$aligncontract/all-genes$aligncontract.phylip ./S101/alignments/$folder/bestMLestimatedgenetree$aligncontract/all-genes_processed$aligncontract.phylip
            ./phyml.exe -m GTR -o n -d nt -i ./S101/alignments/$folder/bestMLestimatedgenetree$aligncontract/all-genes_processed$aligncontract.phylip -u ./S101/genetrees/$folder/bestMLestimatedgenetree/estimatedgenetre$contract.gtr.rerooted.final.contracted.non -b -2 -n 1000
        }&
    fi

    done
done
now=$(date "+%s")
time=$((now-start))
echo "time used:$time seconds"