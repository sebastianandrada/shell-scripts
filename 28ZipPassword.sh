#!/bin/bash
# Programa para ejemplificar el empaquetamieto con clave utilizando zip
# author: Sebastian Andrada

echo "Empaquetar todos los scripts de la carpeta shellcourse con zip y asignarle una clave de seguridad"
zip -e shellcourse.zip *.sh
