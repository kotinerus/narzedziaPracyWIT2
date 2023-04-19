#!/bin/bash
function menu(){
	wartosc=$1
	ile=$2
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
		echo "--help  lub -h - Wyświetla wszystkie kmendy"
		echo "--error n lub -e n - Tworzy n kolejnych errorów"
		echo "";;
	"--init"|"-i")
		git clone https://github.com/kotinerus/narzedziaPracyWIT2
		nowa_sciezka = $(pwd)
		echo "export PATH=\$PATH:$nowa_sciezka" >> ~/.bashrc;;
	"--error"|"-e")
		if [ $# -gt 1 ]; then
			mkdir error${ile}
			for i in $(seq 1 $ile)
				do	
				 	echo "Utworzony przez: skrypt.sh --error ${ile}">error${ile}/error${i}.txt
 	                                echo "error${i}.txt">>error${ile}/error${i}.txt
                	                echo  ${i}>>error${ile}/error${i}.txt
        	                        today=$(date +'%d/%m/%Y');echo "Dziś jest: ${today}">>error${ile}/error${i}.txt
				done
		else
			mkdir error${ile}
			 for i in $(seq 1 100)
                                do
 					echo "Utworzony przez: skrypt.sh --error ${ile}">error${ile}/error${i}.txt
                                        echo "error${i}.txt">>error${ile}/error${i}.txt
                                        echo  ${i}>>error${ile}/error${i}.txt
                                        today=$(date +'%d/%m/%Y');echo "Dziś jest: ${today}">>error${ile}/error${i}.txt

                                done
		fi
esac
}
menu "$@" 
