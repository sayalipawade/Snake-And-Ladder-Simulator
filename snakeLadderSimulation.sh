#!/bin/bash -x

echo "Welcome"

#variables
position_of_player=0
noPlay=0
ladder=1
snake=2

#Repeating till player reaches the winning position
for (( i=0;i<100;i++ ))
do
	diceNo=$(((RANDOM%6)+1))
	option=$((RANDOM%3))
	case $option in
			$noPlay)
				position_of_player=$((position_of_player))
				;;
			$ladder)
				position_of_player=$((position_of_player+diceNo))
				;;
			$snake)
				position_of_player=$((position_of_player-diceNo))
				;;
	esac
	echo $position_of_player
	if [[ $position_of_player -lt 0 ]]
	then
		position_of_player=0
	fi
done


					
