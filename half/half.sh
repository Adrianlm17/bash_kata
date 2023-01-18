#!/bin/bash​

read -p "How many numbers do you need to calculate?" quantityNums

cal=$((1))

half=$(())

while [ $cal -le $quantityNums ]; do

    read -p "Enter the number to be calculated:" number
    
    half=$(($half+$number));

    cal=$(($cal+1));

done

half=$(($half/$cal));

echo The average is:$half