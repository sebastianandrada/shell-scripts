# ! /bin/bash
#Programa para ejemplificar como capturar informacion del usuario utilizando el comando echo, read y $REPLY
# Autor: Sebastian Emanuel Andrada
option=0
name=""

read -p "Set your option:" option
read -p "Set your name:" name

echo "option: $option, name: $name"
