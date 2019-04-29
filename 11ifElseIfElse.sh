# !/bin/bash
# ejemplifico sentencia if, else if, else

edad=0

echo "Ejemplo If - else"
read -p "Indique cual es su edad" edad
if [ $edad -le 18 ]; then   # le -> lower or equal / menor o igual
	echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then # ge -> greater or equal/ mayor o igual
	echo "La persona es adulta"
else
	echo "La persona es adulto mayor"
fi
