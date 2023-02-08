#!/bin/bash
# index=1
# while [ $index -lt 100 ] ; do
#     echo $index
#     index=$(($index + 2))
# done


for index in {1..99}
do 
    remainder=$((index % 2))
    if [ $remainder -ne 0 ]; then
        echo $index
    fi
done
