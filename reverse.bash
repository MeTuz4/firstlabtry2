#!/bin/bash

if [ -e $1 ]
then
if [ -r $1 ]
then
	if [ -e $2 ]
	then
	if [ -w $2 ]
	then
		tac $1 > "temp"
		rev "temp" > $2
		rm temp
	else
		"Error: второй файл не доступен для записи"
	fi
	else
		tac $1 > "temp"
		rev "temp" > $2
		rm temp
	fi
else
echo "Error: недостаточно прав для чтения первого файла"
fi
else
echo "Error: файл для чтения не существует"
fi
