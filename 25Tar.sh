#!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando tar ygzip
# author: Sebastian Andrada

echo "Empaquetar todos los archivos de la carpeta shellCourse"
tar -cvf shellcourse.tar *.sh

# Cuando se empaqueta con gzip, el empaquetamiento anterior se elimina
gzip shellcourse.tar 

echo "Empaquetar un solo archivo, con un ratio de 9"
gzip -9 9options.sh
