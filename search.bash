#!/bin/bash

if [ -e "$1" ]
then
if [ -r "$1" ]
then
	grep -r -s $2 $1
else
	"Error: нет прав для чтения данного файла"
fi
else
	"Error: файл для чтения не существует"
fi
