#!/bin/bash -x

echo "Welcome"

#variables
position_of_player=0
noPlay=0
ladder=1
snake=2
win=0

#Function for playing game
function playGame()
{
declare -A array
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
				((win++))
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
array[$win]=$position_of_player
done
echo $win
}

#Game for two player
player1=$( playGame )
echo $player1

player2=$( playGame )
echo $player2

if [[ $player1 -lt $player2 ]]
then
	echo "player1 won"
else
	echo "player2  won"
fi
