#!/bin/bash
function menu(){
	wartosc=$1
	case "$wartosc" in
	"--date") today=$(date +'%d/%m/%Y');echo "Dziś jest: ${today}" ;;
	esac
}
menu "$1"
