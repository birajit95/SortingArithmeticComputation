#! /bin/bash 

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


sort(){
condition=$1
array_length=${#result_array[@]}

for (( i=0; i<$array_length; i++ ))
do
   for (( j=0; j<$(( array_length - i -1 )); j++ ))
   do
      if [ ${result_array[$j]} $condition ${result_array[$(( j +1))]} ]
      then
          temp=${result_array[$j]}
          result_array[$j]=${result_array[$(( j +1 ))]}
          result_array[$(( j+1 ))]=$temp
      fi
   done
done
}

sort '-lt'
echo ${result_array[@]}

sort '-gt'
echo ${result_array[@]}

