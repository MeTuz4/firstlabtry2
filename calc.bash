#!/bin/bash

case $1 in
"sum")
	let "sum = $2 + $3"
	echo $sum
;;
"sub")
	let "sub = $2 - $3"
	echo $sub
;;
"mul")
	let "mul = $2 * $3"
	echo $mul
;;
"div")
	case $3 in
	"0" | "+0" | "-0")
	echo "error: division by zero"
	;;
	*)
	let "div = $2 / $3"
	echo $div
	;;
	esac
;;
*)
	echo "error: calculator function not selected"
	echo "choose one: sum, sub, mul or div"
;;
esac
