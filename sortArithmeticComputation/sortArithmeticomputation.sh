#!/bin/bash -x

echo "This problem computes different arithmetic expressions and Sorts the results"

read -p "enter three numbers" a b c

compute1=`awk 'BEGIN{printf("%0.2f", '$a' + '$b' * '$c')}'`

compute2=`awk 'BEGIN{printf("%0.2f", '$a' * '$b' + '$c')}'`

compute3=`awk 'BEGIN{printf("%0.2f", '$c' + '$a' / '$b')}'`

compute4=`awk 'BEGIN{printf("%0.2f", '$a' % '$b' + '$c')}'`

