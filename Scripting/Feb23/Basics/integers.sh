#!/bin/bash
read X
read Y
if [ $X -lt 100 ] && [ $X -gt -100 ] && [ $Y -ne 0 ]; then
    echo $(($X + $Y))
    echo $(($X - $Y))
    echo $(($X * $Y))
    echo $(($X / $Y))
else
    echo "validations failed"
    exit 1
fi 