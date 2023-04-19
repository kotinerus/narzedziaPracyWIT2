#!/bin/bash
function menu(){
	wartosc=$1
	case "$wartosc" in
	"--date") today=$(date +'%d/%m/%Y');echo "Dziś jest: ${today}" ;;
	"--logs")
		for i in {1..100}
			do

				echo "Utworzony przez: skrypt.sh --logs">log${i}.txt
	 			echo "log${i}.txt">>log${i}.txt
				echo  ${i}>>log${i}.txt
				today=$(date +'%d/%m/%Y');echo "Dziś jest: ${today}">>log${i}.txt

			done;;
	esac
}
menu "$1"
