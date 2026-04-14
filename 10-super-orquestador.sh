#!/bin/bash

echo "--- 🚀 SUPER ORQUESTADOR WEB V1.0 ---"

# 1. Entrada y Validación
read -p "Nombre del nuevo proyecto: " PROYECTO
if [ -d "$PROYECTO" ]; then
    echo "❌ Error: La carpeta ya existe."
    exit 1
fi

read -p "¿Cuántas imágenes tendrá tu galería? " CANTIDAD

# 2. Construcción de Estructura
mkdir -p "$PROYECTO"/{css,js,img}
cd "$PROYECTO"

# 3. Creación del HTML con Bucle dinámico
echo "<!DOCTYPE html>
<html lang='es'>
<head>
    <meta charset='UTF-8'>
    <title>$PROYECTO</title>
    <link rel='stylesheet' href='css/style.css'>
</head>
<body>
    <h1>Galería de $PROYECTO</h1>
    <div class='grid'>" > index.html

# Inyectamos el número de imágenes que pidió el usuario
for (( i=1; i<=$CANTIDAD; i++ ))
do
    echo "      <img src='img/foto-$i.jpg' alt='Foto $i'>" >> index.html
done

echo "    </div>
    <script src='js/script.js'></script>
</body>
</html>" >> index.html

# 4. Archivos de Estilo básicos
echo "body { background: #111; color: white; text-align: center; }
.grid { display: flex; flex-wrap: wrap; justify-content: center; gap: 10px; }
img { width: 200px; height: 150px; background: #333; border-radius: 8px; }" > css/style.css

echo "console.log('Proyecto $PROYECTO listo');" > js/script.js

# 5. El toque final: Abrir VS Code
echo "✅ Proyecto finalizado con éxito."
code .