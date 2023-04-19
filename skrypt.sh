#!/bin/bash
function menu(){
	wartosc=$1
	case "$wartosc" in
	"--date") today=$(date +'%d/%m/%Y');echo "Dziś jest: ${today}" ;;
	"--logs")
		for i in $(seq 1 $2)
			do

				echo "Utworzony przez: skrypt.sh --logs">log${i}.txt
	 			echo "log${i}.txt">>log${i}.txt
				echo  ${i}>>log${i}.txt
				today=$(date +'%d/%m/%Y');echo "Dziś jest: ${today}">>log${i}.txt

			done;;
	"--help")
		echo ""
		echo "--date - Wypisuje dzisiejszą datę"
		echo "--logs n - Tworzy n kolejnych plików"
		echo "--help - Wyświetla wszystkie kmendy"
		echo ""
	esac
}
menu "$1" "$2"
