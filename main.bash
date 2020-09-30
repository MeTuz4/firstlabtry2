#!/bin/bash

case $1 in
"calc")
	echo "calc active"
	sh ./calc.bash $2 $3 $4
;;
"search")
	echo "search active"
	sh ./search.bash $2 $3
;;
"reverse")
	echo "reverse active"
	sh ./reverse.bash $2 $3
;;
"strlen")
	echo "strlen active"
	source strlen.bash
	strlen "$2"
;;
"log")
	echo "log active"
	sh ./log.bash
;;
"exit")
	if [ -z $2 ]
	then
	exit 0
	fi
	case "$2" in
	*[^0-9]*)
	echo $2 "not cifra"
	;;
	*)
	exit $2
	;;
	esac
;;
"help")
	echo "help active"
	sh ./help.bash
;;
"interactive")
	echo "interactive active"
	source interactive.bash
;;
*)
	echo "Error: команда не обнаружена"
	sh ./help.bash
;;
esac
