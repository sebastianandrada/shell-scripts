# !/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Author: Sebastian Andrada - Github:  @sebastianandrada

opcion=0

while :
do
	#Limpiar pantalla
	clear
	#Desplegar el menu de opciones
	echo "--------------------------------------------"
	echo "PGUTIL - Programa de utilidades de Postgres"
	echo "---------------------------------------------"
	echo "                  MENU PRINCIPAL             "
	echo "1. Instalar Postgres"
	echo "2. Desinstalar Postgres"
	echo "3. Sacar un respaldo"
	echo "4. Restar respaldo"
	echo "5. Salir"

	#Leer los datos del usuario - capturar informacion
	read -n1 -p "Ingrese una opcion [1-5]: " opcion

	#Validar la opcion ingresada
	case $opcion in
		1)
			echo -e "\nInstalando postgres....."
			sleep 3
			;;
		2)
			echo -e "\nDesinstalando postgres........"
			sleep 3
			;;
		3)
			 echo -e "\nSacando respaldo.........."
			sleep 3 
			;;
		4)
			echo -n "\nRestaurando respaldo.........."
			sleep 3
			;;
		5)
			echo -e "\nSaliendo del programa"
			exit 0
			;;
	esac
done
