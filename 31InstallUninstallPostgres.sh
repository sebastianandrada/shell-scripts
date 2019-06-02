# !/bin/bash
# Programa que permite manejar las utilidades de Postgres
# Author: Sebastian Andrada - Github:  @sebastianandrada

opcion=0

#Esta es la funcion para instalar postgres
instalar_postgres () {
    echo -e "\n Verificar instalación postgres ...."
    verifyInstall=$(which psql)
    if [ $? -eq 0 ]; then
        echo -e "\n Postgres ya se encuentra instalado en el equipo"
    else
        read -s -p "Ingresar contraseña de sudo:" password
        read -s -p "Ingresar contraseña a utilizar en postgres:" passwordPostgres
        echo "$password" | sudo -S apt update
        echo "$password" | sudo -S apt-get -y install postgresql postgresql-contrib
        sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{$PASSWORDpOSTGRES}';"
        echo "$password" | sudo -S systemctl enable postgresql.service
        echo "$password" | sudo -S systemctl start postgresql.service
    fi    
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
}

#Funcion para desinstalar postgres
desinstalar_postgres () {
    read -s -p "Ingresar contraseña de sudo:" password
    echo -e "\n"
    echo "$password" | sudo -S systemctl stop postgresql.service
    echo "$password" | sudo -S apt-get -y --purge remove postgresql\*
    echo "$password" | sudo -S rm -r /etc/postgresql
    echo "$password" | sudo -S rm -r /etc/postgresql-common
    echo "$password" | sudo -S rm -r /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel postgresql
    read -n 1 -s -r -p "PRESIONE [ENTER] para continuar..."
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
