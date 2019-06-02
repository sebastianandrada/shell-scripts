# !/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Author: Sebastian Andrada - Github:  @sebastianandrada

opcion=0

#Esta es la funcion para instalar postgres
instalar_postgres () {
  echo "Instalar postgres..."
}

#Funcion para desinstalar postgres
desinstalar_postgres () {
  echo "Desinstalar postgres..."
}

#Funcion para sacar un respaldo
sacar_respaldo () {
  echo "Sacar respaldo..."
  echo "Directorio respaldo: $1"
}

#Funcion para restaurar un respaldo
restaurar_respaldo () {
  echo "Restaurar respaldo..."
  echo "Directorio respaldo: $1"
}

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
			instalar_postgres
			sleep 3
			;;
		2)
			desinstalar_postgres
			sleep 3
			;;
		3)
			read -p "Directorio Backup:" directorioBackup
			sacar_respaldo $directorioBackup
			sleep 3 
			;;
		4)
			read -p "Directorio respaldo:" directorioRespaldo
			restaurar_respaldo $directorioRespaldo
			sleep 3
			;;
		5)
			echo -e "\nSaliendo del programa"
			exit 0
			;;
	esac
done