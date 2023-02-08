#!/bin/bash


# function definition to get distribution
get_distribution() {
    distribution=""
    # Check if /etc/os-release  file exists
    if [ -r /etc/os-release ]; then
        distribution="$(. /etc/os-release && echo "$ID")"
    fi
    echo $distribution

}

get_distribution
# usage
echo $(get_distribution)
