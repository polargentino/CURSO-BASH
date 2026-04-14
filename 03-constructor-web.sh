#!/bin/bash

echo "--- 🛠️ GENERADOR DE ESTRUCTURA WEB 1.0 ---"

# 1. Preguntamos el nombre del proyecto
read -p "Nombre de la carpeta del proyecto: " PROYECTO

# 2. Creamos la carpeta principal
mkdir "$PROYECTO"
echo "✅ Carpeta '$PROYECTO' creada."

# 3. Entramos a la carpeta y creamos las subcarpetas
cd "$PROYECTO"
mkdir css js img video audio
echo "✅ Subcarpetas (css, js, img, video, audio) creadas."

# 4. Creamos los archivos base vacíos
touch index.html css/style.css js/script.js
echo "✅ Archivos base (index, style, script) creados."

echo "------------------------------------------------"
echo "🚀 ¡Todo listo! Tu proyecto $PROYECTO está preparado."
echo "Escribe: cd $PROYECTO y luego: code ."
echo "------------------------------------------------"