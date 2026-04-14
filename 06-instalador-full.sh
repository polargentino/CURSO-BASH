#!/bin/bash

echo "--- 🛠️ CONFIGURADOR WEB PRO ---"

read -p "Nombre del proyecto: " PROYECTO

# 1. Validación de seguridad
if [ -d "$PROYECTO" ]; then
    echo "⚠️ Error: '$PROYECTO' ya existe. Elige otro nombre."
    exit 1
fi

# 2. Creación base
mkdir "$PROYECTO"
cd "$PROYECTO"
mkdir css js img
touch index.html css/style.css js/script.js

# --- 3. SECCIÓN DE PREGUNTAS ---

# Pregunta de Audio
read -p "¿Deseas incluir carpeta de AUDIO? (s/n): " RESP_AUDIO
if [ "$RESP_AUDIO" == "s" ]; then
    mkdir audio
    echo "✅ Carpeta 'audio' creada."
fi

# Pregunta de Video
read -p "¿Deseas incluir carpeta de VIDEO? (s/n): " RESP_VIDEO
if [ "$RESP_VIDEO" == "s" ]; then
    mkdir video
    echo "✅ Carpeta 'video' creada."
fi

echo "------------------------------------------------"
echo "🚀 Proyecto '$PROYECTO' configurado a medida."
echo "Estructura final:"
ls -F
echo "------------------------------------------------"