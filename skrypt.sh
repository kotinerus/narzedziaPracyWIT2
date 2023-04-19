#!/bin/bash
function menu(){
	wartosc=$1
	case "$wartosc" in
	"--date"|"-d") 
				today=$(date +'%d/%m/%Y')
				echo "Dziś jest: ${today}" ;;
	"--logs"|"-l")
		for i in $(seq 1 $2)
			do

				echo "Utworzony przez: skrypt.sh --logs">log${i}.txt
	 			echo "log${i}.txt">>log${i}.txt
				echo  ${i}>>log${i}.txt
				today=$(date +'%d/%m/%Y');echo "Dziś jest: ${today}">>log${i}.txt

			done;;
	"--help"|"-h")
		echo ""
		echo "--date lub -d - Wypisuje dzisiejszą datę"
		echo "--logs n lub -l n - Tworzy n kolejnych plików"
		echo "--help - lub -h Wyświetla wszystkie kmendy"
		echo ""
	esac
}
menu "$1" "$2"
