#!/bin/bash -x

declare -A dict
num=0

die1=1;
die2=2;
die3=3;
count=0
while [[ $d1count -lt 3 && $d2count -lt 3 && $d3count -lt 3 ]]
do
rollDie=$((RANDOM%3 +1 ))
if [ $rollDie -eq $die1 ]
then 
d1count=$(($d1count+1))
dict[$rollDie]=$((${dict[$rollDie]} + 1))


elif [ $rollDie -eq $die2 ]
then
d2count=$(($d2count + 1))
dict[$rollDie]=$((${dict[$rollDie]} + 1))


else
d3count=$(($d3count + 1))
dict[$rollDie]=$((${dict[$rollDie]} + 1))


let num+=1
fi
done
#echo $d1count ',' $d2count ',' $d3count

#dict[0]=$d1count
#dict[1]=$d2count
#dict[2]=$d3count

echo ${dict[@]}
echo ${!dict[@]}
