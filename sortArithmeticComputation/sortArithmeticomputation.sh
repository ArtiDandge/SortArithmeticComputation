#!/bin/bash -x

echo "This problem computes different arithmetic expressions and Sorts the results"

declare -A resultDict
declare -a array
read -p "enter three numbers " a b c

resultDict["k1"]=`awk 'BEGIN{printf("%0.2f", '$a' + '$b' * '$c')}'`;

resultDict["k2"]=`awk 'BEGIN{printf("%0.2f", '$a' * '$b' + '$c')}'`;

resultDict["k3"]=`awk 'BEGIN{printf("%0.2f", '$c' + '$a' / '$b')}'`;

resultDict["k4"]=`awk 'BEGIN{printf("%0.2f", '$a' % '$b' + '$c')}'`;

echo "keys " ${!resultDict[@]}
echo "computation result " ${resultDict[@]}


array=${resultDict[@]}

decendingResult=$(for a in ${array[@]};do echo $a;done | sort -nr);
echo "Computation values in decending order "$decendingResult

asendingResult=$(for a in ${array[@]};do echo $a;done | sort -n);
echo "Computation values in asending order "$asendingResult



