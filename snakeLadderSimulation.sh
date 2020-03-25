#!/bin/bash -x
echo "Welcome"

#variables
position_of_player=0
noPlay=0
ladder=1
snake=2

#rolling the die and getting a number between 1 to 6
diceNo=$(((RANDOM%6)+1))

#player checking for option-No play,ladder or snake
option=$((RANDOM%3))
case $option in
			$noPlay)
				position_of_player=0
				;;
			$ladder)
				position_of_player=$((position_of_player+diceNo))
				;;
			$snake)
				position_of_player=$((position_of_player-diceNo))
				;;
esac
					
