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
read choise
case $choise in
"q")
	echo "Введите команду:"
	read com
	echo "Введите первое число:"
	read f
	echo "Введите первое число:"
	read s
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
	sh ./strlen.bash $str
;;
"t")
	sh ./log.bash
;;
"y")
	echo "Введите код возврата:"
	read a
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
