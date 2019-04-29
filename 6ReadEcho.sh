# ! /bin/bash

option=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingresar una opción:" option
read -p "Ingrese el nombre del archivo del backup:" backupName
echo "Opcion:$option , backupName:$backupName"