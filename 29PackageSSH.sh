#!/bin/bash
# Programa para ejemplificar la forma de como transferir por la red utilizando el comando rsync,
# utilizando las opciones de empaquetamiento para optimizar la velocidad de transferencia
# author: Sebastian Andrada

echo "Empaquetar todos los scripts de la carpeta shellcourse y transferirlos por la red a otro equipo utilizando el comando rsync"

host=""
usuario=""
read -p "Ingreasar el host: "host
read -p "Ingresar el usuario: "usuario
echo -e "\nEn este momento se prodedera a empaquetar la carpeta y tranferirla segun los datos ingresados"
rsync -avz ${pwd} $usuario@$host:/home/sebaaa

