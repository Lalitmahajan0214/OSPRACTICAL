#!/bin/bash
echo "Enter the number:"
read number
i=2
if [ $i -lt 2 ]
then
echo "$number is not prime number"
exit
fi
while [ $i-lt $number 1 ]
do
if [ `expr $number %  $i` -eq 0 ]
then
echo "$number is not prime number"
exit
fi
i= `expr $i 1`
done
echo "$number is  a prime number"