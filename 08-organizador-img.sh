#!/bin/bash

echo "--- 🖼️ PREPARANDO CARPETAS DE RECURSOS ---"

# Lista de nombres personalizados
for TIPO in baja media alta
do
   echo "Generando directorio para calidad: $TIPO"
   mkdir -p "img/$TIPO-res"
done

echo "----------------------------------------"
echo "✅ Carpetas de resolución creadas dentro de img/."