#!/bin/bash
p=10000
t=10
r=6
echo "Finding simple interest"
result=$[$p * $t * $r /100]
echo "Intrest per month is $result"
exit 0