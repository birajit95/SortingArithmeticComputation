#! /bin/bash -x

echo "Welcome to Sorting Arithmetic Computation Program"

read -p "Enter the value of a b and c : " a b c

expession_1=$(( a+b*c ))

expession_2=$(( a*b+c ))

expession_3=$(( c+a/b ))

expession_4=$(( a%b+c ))




