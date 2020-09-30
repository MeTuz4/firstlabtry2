#!/bin/bash

strlen () {
a=${#1}
if [[ "$1" = \"* ]]
then
	if [[ "$1" = *\" ]]
	then
		let "a = a - 2"
		echo $a
	else
		echo $a
	fi
else
	echo $a
fi
}
