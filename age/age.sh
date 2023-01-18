#!/bin/bash

read -p "Indicate the year you were born, e.g. 2000:" year

read -p "Enter the number of the month you were born, e.g. 9:" month

read -p "Indicate the number of the day you were born, e.g. 27:" day

yearCurrent=$(date +%Y)
monthCurrent=$(date +%m)
dayCurrent=$(date +%d)


age=$(($yearCurrent-$year))


if [ $monthCurrent -lt $month ];then 
    
    age=$(($age-1));
    
    echo Your age is: $age
    
elif [ $monthCurrent -eq $month ]; then
    
    if [ $dayCurrent -lt $day ]; then
    
        age=$(($age-1))
    
        echo Your age is: $age
    
    else
    
        echo Your age is: $age
    
    fi

else
    echo Your age is: $age

fi