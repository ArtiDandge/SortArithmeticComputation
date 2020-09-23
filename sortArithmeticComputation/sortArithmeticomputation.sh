#!/bin/bash -x

echo "This problem computes different arithmetic expressions and Sorts the results"

declare -A resultDict
read -p "enter three numbers " a b c

resultDict["1"]=`awk 'BEGIN{printf("%0.2f", '$a' + '$b' * '$c')}'`;

resultDict["2"]=`awk 'BEGIN{printf("%0.2f", '$a' * '$b' + '$c')}'`;

resultDict["3"]=`awk 'BEGIN{printf("%0.2f", '$c' + '$a' / '$b')}'`;

resultDict["4"]=`awk 'BEGIN{printf("%0.2f", '$a' % '$b' + '$c')}'`;

echo ${!resultDict[@]}
echo ${resultDict[@]}
