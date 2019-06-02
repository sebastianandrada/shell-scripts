#!/bin/bash
# Programa para ejemplificar el empaquetamiento con el comando pbzip
# author: Sebastian Andrada

echo "Empaquetar todos los archivos de la carpeta shellCourse"
tar -cvf shellcourse.tar *.sh
pbzip2 -f shellcourse.tar

echo "Empaquetar un directorio con tar y pbzip2"
tar -cf *.sh -c > shellCourseDos.tar.bz2
