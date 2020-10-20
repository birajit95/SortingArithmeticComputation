#! /bin/bash -x

echo "Welcome to Sorting Arithmetic Computation Program"

read -p "Enter the value of a b and c : " a b c

expession_1=$(( a+b*c ))

expession_2=$(( a*b+c ))

expession_3=$(( c+a/b ))

expession_4=$(( a%b+c ))


declare -A result_dict

result_dict['expession_1']=$expession_1

result_dict['expession_2']=$expession_2

result_dict['expession_3']=$expession_3

result_dict['expession_4']=$expession_4


result_array=()
count=0
for key in ${!result_dict[@]}
do
   result_array[((count++))]=${result_dict[$key]}
done


