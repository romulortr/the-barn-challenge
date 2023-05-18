#!/bin/bash
for i in {1..10} ; do
    n=`expr $i \* 1`
        for j in {299..0} ; do            
            # run the test
            python3 run.py --world_idx $j
            sleep 5
        done
done
