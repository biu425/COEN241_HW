#!/bin/bash
# Test cases for CPU testing

cmp=(10000 20000 30000)
time=(10 30)

for i in ${cmp[@]}
do 
    for j in ${time[@]}
    do 
        echo "
Test case: CMP value $i, time value $j."
        for k in {1..5}
        do
            echo "
    Repeat $k: CMP value $i, time value $j."
            sysbench --test=cpu --cpu-max-prime=$i --time=$j run
        done
    done
done

