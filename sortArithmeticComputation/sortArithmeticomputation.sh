#!/bin/bash -x

echo "This problem computes different arithmetic expressions and Sorts the results"

read -p "enter three numbers" a b c

compute=`awk 'BEGIN{printf("%0.2f", '$a' + '$b' * '$c')}'`
