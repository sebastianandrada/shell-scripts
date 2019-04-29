# ! /bin/bash
# ejemplificar como capturar la info y validar

option=0
backupName=""
pass=""

read -n1 -p "Set your option:" option #-n 1 para validar que solo se ingrese un caracter
echo -e "\n"
read -n10 -p "set your name:" name # -n 10 para validar que sean 10 caracteres
read -s -p "password:" pass # -s para no permitir que se vea lo que se ingresa
echo "option:$option , name:$name , password:$pass"
