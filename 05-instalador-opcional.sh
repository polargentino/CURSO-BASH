#!/bin/bash

echo "--- 🛠️ INSTALADOR WEB PERSONALIZADO ---"

read -p "Nombre del proyecto: " PROYECTO

# Verificamos si ya existe (usando lo que aprendimos antes)
if [ -d "$PROYECTO" ]; then
    echo "⚠️ El proyecto ya existe. Abortando..."
    exit 1
fi

# Creamos lo básico
mkdir "$PROYECTO"
cd "$PROYECTO"
mkdir css js img
touch index.html css/style.css js/script.js

# --- PREGUNTA OPCIONAL ---
echo "¿Deseas incluir una carpeta para AUDIOS? (s/n)"
read RESPUESTA

if [ "$RESPUESTA" == "s" ]; then
    mkdir audio
    echo "✅ Carpeta 'audio' creada."
else
    echo "⏭️ Saltando carpeta de audio."
fi

echo "------------------------------------------------"
echo "🚀 Estructura de '$PROYECTO' terminada."