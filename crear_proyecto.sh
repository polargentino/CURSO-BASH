#!/bin/bash

# --- 1. Entrada de datos ---
echo "🚀 Bienvenido al Generador de Proyectos de Pol Monsalvo"
read -p "Nombre del nuevo proyecto: " PROYECTO

# --- 2. Creación de Estructura ---
mkdir $PROYECTO
cd $PROYECTO
mkdir css js img video audio

# --- 3. Generación de Archivos Base ---
# HTML Base
echo "<!DOCTYPE html>
<html lang='es'>
<head>
    <meta charset='UTF-8'>
    <title>$PROYECTO</title>
    <link rel='stylesheet' href='css/style.css'>
</head>
<body>
    <h1>Proyecto: $PROYECTO</h1>
    <script src='js/script.js'></script>
</body>
</html>" > index.html

# CSS Base
echo "body { background: #121212; color: white; font-family: sans-serif; }" > css/style.css

# JS Base
echo "console.log('Entorno $PROYECTO listo');" > js/script.js

# --- 4. Automatización de Git ---
git init
git add .
git commit -m "Estructura inicial creada por script .sh"

echo "✅ Proyecto $PROYECTO creado y listo para trabajar."