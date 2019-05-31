#!/bin/bash 

doNothing () {
	$(dd if=/dev/zero of=/dev/null)
	return 0
}

n1=$(($(ls -l | wc -l) - 1))
echo "Guess the number of a files in this directory > " 
while read guess; do
	if [ "$guess" -eq "$n1" ]; then
		echo "Congratulations"
		break;
	elif [ "$guess" -gt "$n1" ]; then
		echo -n "Guess too high "
	elif [ "$guess" -lt "$n1" ]; then
		echo -n "Guess too low "
	fi
done


