count = 0
for i in 1 2 3 4 5
do
    let "count++"
    echo $count
    if [ "$count" = "3" ]
    then 
        echo bong
    fi
done