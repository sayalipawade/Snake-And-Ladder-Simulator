#!/bin/bash -x

echo "Welcome"

#variables
position_of_player=0
noPlay=0
ladder=1
snake=2

#Repeating till player reaches the winning position
while [[ $position_of_player -lt 100 ]]
do
	diceNo=$(((RANDOM%6)+1))
	option=$((RANDOM%3))
	case $option in
			$noPlay)
				position_of_player=$position_of_player
				;;
			$ladder)
				res=$((position_of_player+diceNo))
				if [[ $res -gt 100 ]]
				then
					position_of_player=$position_of_player
				else
					position_of_player=$(($position_of_player+$diceNo))
				fi
				;;
			$snake)
				if [[ $position_of_player -lt $diceNo ]]
				then
					position_of_player=$position_of_player
				else
					position_of_player=$(($position_of_player-$diceNo))
				fi
				;;
	esac
done


					
