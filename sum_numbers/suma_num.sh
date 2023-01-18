#!/bin/bash

echo Insert the number you want to add:

read num1

echo Insert the secondary number to be added:

read num2

result=$(($num1+$num2))

echo $num1 + $num2 = $result
