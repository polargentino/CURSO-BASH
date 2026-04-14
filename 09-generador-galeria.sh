#!/bin/bash

echo "--- 🖼️ GENERADOR DE GALERÍA HTML ---"

# 1. Crear el archivo con el inicio del HTML
echo "<html><head><title>Galeria IA</title></head><body>" > galeria.html
echo "<h1>Mi Galería Generativa</h1>" >> galeria.html
echo "<div class='galeria'>" >> galeria.html

# 2. El Bucle que inyecta las imágenes
for i in {1..5}
do
    echo "  <img src='img/ia-$i.webp' alt='Imagen IA $i'>" >> galeria.html
done

# 3. Cerrar las etiquetas
echo "</div></body></html>" >> galeria.html

echo "✅ Archivo 'galeria.html' generado con 5 imágenes automáticas."