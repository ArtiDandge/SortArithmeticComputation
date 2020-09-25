#!/bin/bash -x

echo "This problem computes different arithmetic expressions and Sorts the results"

declare -A resultDict
declare -a array

#input three numbers as a,b,c
read -p "enter three numbers " a b c

#here k1, k2, k3 and k4 represents key for dictionary
resultDict["k1"]=`awk 'BEGIN{printf("%0.2f", '$a' + '$b' * '$c')}'`;

resultDict["k2"]=`awk 'BEGIN{printf("%0.2f", '$a' * '$b' + '$c')}'`;

resultDict["k3"]=`awk 'BEGIN{printf("%0.2f", '$c' + '$a' / '$b')}'`;

resultDict["k4"]=`awk 'BEGIN{printf("%0.2f", '$a' % '$b' + '$c')}'`;

echo "keys " ${!resultDict[@]}
echo "computation result " ${resultDict[@]}


array=${resultDict[@]}

#display result of array in descending order
decendingResult=$(for a in ${array[@]};do echo $a;done | sort -nr);
echo "Computation values in descending order "$decendingResult

#display result of array in Ascending order
asendingResult=$(for a in ${array[@]};do echo $a;done | sort -n);
echo "Computation values in ascending order "$asendingResult



