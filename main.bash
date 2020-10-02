#!/bin/bash

incor_num_arg(){
if [[ $1 -ne $2 ]]
then
echo "Error: неверное количество аргументов"
exit 100
fi
}

num_of_elem=$#

case $1 in
"calc")
	echo "calc active"
	incor_num_arg $num_of_elem 4
	sh ./calc.bash $2 $3 $4
;;
"search")
	echo "search active"
	incor_num_arg $num_of_elem 3
	source ./search.bash $2 $3
;;
"reverse")
	echo "reverse active"
	incor_num_arg $num_of_elem 3
	sh ./reverse.bash $2 $3
;;
"strlen")
	echo "strlen active"
	incor_num_arg $num_of_elem 2
	source strlen.bash
	strlen "$2"
;;
"log")
	echo "log active"
	incor_num_arg $num_of_elem 1
	sh ./log.bash
;;
"exit")
	if [[ $num_of_elem -eq 1 || $num_of_elem -eq 2 ]]
	then
	if [ -z $2 ]
	then
	exit 0
	fi
	case "$2" in
	*[^0-9]*)
	echo $2 " - это не цифра"
	;;
	*)
	exit $2
	;;
	esac
	else
	echo "Error: неверное количество аргументов"
	exit 100
	fi
;;
"help")
	echo "help active"
	incor_num_arg $num_of_elem 1
	sh ./help.bash
;;
"interactive")
	echo "interactive active"
	incor_num_arg $num_of_elem 1
	source interactive.bash
;;
*)
	echo "Error: команда не обнаружена"
	sh ./help.bash
;;
esac
