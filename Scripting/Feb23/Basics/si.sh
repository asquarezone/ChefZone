#!/bin/bash
p=10000
t=10
r=6
if $[$p > 0]
then
    echo "Finding simple interest"
    result=$[$p * $t * $r /100]
    echo "Intrest per month is $result"
    exit 0 # success
fi
echo "Ensure principal has proper value"
exit 1 # error