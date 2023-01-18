#!/bin/bash

read -p "Insert the number you want to add:" num1

read -p "Insert the secondary number to be added:" num2

result=$(($num1+$num2))

echo $num1 + $num2 = $result
