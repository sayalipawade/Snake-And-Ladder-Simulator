#!/bin/bash -x
echo "Welcome"

#variables
position_of_player=0

#rolling the die and getting a number between 1 to 6
diceNo=$(((RANDOM%6)+1))
