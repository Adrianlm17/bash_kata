#!/bin/bash 


# It shows you the current PID
echo $$


pid=$$

attempts=$((1))


read -p "Try to guess the PID of this script by entering a number:" numPID


while [ $numPID -ne $pid ];do

   if [ $numPID -lt $pid ]; then

      echo "Your number is too small...";

      attempts=$(($attempts+1)); 

      read -p "Enter a new number:" numPID

   else

      echo "Your number is too big";

      attempts=$(($attempts+1));

      read -p "Enter a new number:" numPID  

   fi


done

echo "You did it!!! Congratulations, you managed to get the PID right on attempt number: $attempts!"