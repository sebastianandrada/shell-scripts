# !/bin/bash
# ejemplifico if's anidados

notaClase=0
continua=""

echo "Ejemplo If - else"
read -n1 -p "Indique su nota (1-9)" notaClase
echo -e "\n"
if [ $notaClase -ge 7 ]; then
	echo "El alumno aprueba la materia"
	read -p "Va a continuar en el siguiente nivel? (s/n): " continua
	if [ $continua = "s" ]; then
		echo "Bienvenide al siguiente nivel"
	else
		echo "Gracias por estudiar con nosotros, mucha suerte!!!"
	fi
else 
	echo "El alumno reprueba la materia"
fi
