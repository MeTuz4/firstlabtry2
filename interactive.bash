#!/bin/bash


while [ 0 ]
do
echo "Menu activate"
echo "q) Calculator"
echo "w) Search"
echo "e) Reverse"
echo "r) Strlen"
echo "t) Log"
echo "y) Exit"
echo "u) Help"
echo "Введите букву соответсвующую команде:"
read choise
case $choise in
"q")
	while [ 0 ]
	do
		echo "Введите команду (sum, sub, mul or div)"
		read com
		if [[ "$com" == "sum" || "$com" == "sub" || "$com" == "mul" || "$com" == "div" ]]
		then
			break
		fi
		echo "Error: $com - не одна из команд"
	done
	while [ 0 ]
	do
		echo "Введите первое число:"
		read f
		if [[ $f =~ [+-]?[0-9]+ ]]
		then
			break
		fi
		echo "Error: $com - не одна из команд"
	done
	while [ 0 ]
	do
		echo "Введите второе число:"
		read s
		if [[ $s =~ [+-]?[0-9]+ ]]
		then
			break
		fi
		echo "Error: $com - не одна из команд"
	done
	sh ./calc.bash $com $f $s
;;
"w")
	echo "Введите название директории:"
	read dir
	echo "Введите регулярное выражение в \" \":"
	read reg
	sh ./search.bash $dir $reg
;;
"e")
	echo "Введите файл (полный маршрут), откуда будет взят текст:"
	read file1
	echo "Введите файл (полный маршрут), куда будет записан текст:"
	read file2
	sh ./reverse.bash $file1 $file2
;;
"r")
	echo "Введите строчку в \" \" (для корректного отображения)"
	read str
	if [[ "$str" = \"* ]]
	then
		if [[ "$str" = *\" ]]
		then
		source strlen.bash
		strlen "$str"
		else
		echo "Error: не корректный ввод"
		fi
	else
	echo "Error: не корректный ввод"
	fi
;;
"t")
	sh ./log.bash
;;
"y")
	echo "Введите код возврата:"
	read a
	if [ -z $a ]
	then
	exit 0
	fi
	case "$a" in
	*[^0-9]*)
	echo "error: введена не цифра"
	;;
	*)
	exit $a
	;;
	esac
;;
"u")
	sh ./help.bash
;;
*)
	echo "Команда не обнаружена, попробуете снова"
;;
esac
done
