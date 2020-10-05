#!/bin/bash

if [ -e $1 ]
then
if ! [ -d $1 ]
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
		echo "Error: второй файл не доступен для записи"
		exit 105
	fi
	else
	if ! [ touch $2 2> /dev/null ]
	then
		echo "Error: файла не существует, не возможно создание"
		exit 101
	fi
		tac $1 > "temp"
		rev "temp" > $2
		rm temp
	fi
else
echo "Error: недостаточно прав для чтения первого файла"
exit 102
fi
else
echo "Error: выбрана директория, а не файл"
exit 103
fi
else
echo "Error: файл для чтения не существует"
exit 104
fi
