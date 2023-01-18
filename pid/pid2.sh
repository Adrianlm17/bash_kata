#!/bin/bash 

# It shows you the current PID
echo $$


pid=$$

attempts=$((1))


read -p "Try to guess the PID of this script by entering a number:" numPID


while [ $numPID -ne $pid ];do

   if [ $attempts -eq 15 ]; then

      echo "Come on, you can do it! :)"

   elif [ $attempts -eq 25 ]; then

      echo "Maybe this isn't your thing?"

   fi

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