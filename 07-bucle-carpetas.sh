#!/bin/bash

echo "--- 📂 GENERADOR DE CARPETAS EN MASA ---"

# El bucle irá del 1 al 5
for i in {1..5}
do
   echo "Creando la carpeta: Clase-$i"
   mkdir "Clase-$i"
   
   # Opcional: Crear un archivo de notas dentro de cada una
   touch "Clase-$i/notas.txt"
done

echo "----------------------------------------"
echo "✅ ¡Se crearon 5 carpetas y 5 archivos en 1 segundo!"