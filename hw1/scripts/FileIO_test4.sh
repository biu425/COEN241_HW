#!/bin/bash
# Test cases for FileIO testing

echo "
Test case: threads value 16, file size 3G."
for k in {1..5}
do
    echo "
Repeat $k: "
    sysbench --num-threads=16 --test=fileio --file-total-size=3G --file-test-mode=rndrw prepare 
    sysbench --num-threads=16 --test=fileio --file-total-size=3G --file-test-mode=rndrw run 
    sysbench --num-threads=16 --test=fileio --file-total-size=3G --file-test-mode=rndrw cleanup
done