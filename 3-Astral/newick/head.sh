for seqlen in _200_ _400_ _800_ _
do
    for head in 50 200 500 1000
    do
        for th in 0 0.001 0.01 0.1 0.02 0.2 0.03 0.04 0.05
        do
            head -$head newicked_$th"_all_genes"$seqlen"tree.txt" > ../newicktop/newicked_$th"_all_genes"$seqlen"tree_top"$head.txt&
        done
    done
done