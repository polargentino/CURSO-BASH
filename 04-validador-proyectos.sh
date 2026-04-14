#!/bin/bash

echo "--- 🛡️ CONSTRUCTOR CON SEGURIDAD ---"

read -p "Nombre del proyecto: " PROYECTO

# --- EL CORAZÓN DEL SCRIPT: EL IF ---
# -d significa "directory". Preguntamos: ¿Existe este directorio?

if [ -d "$PROYECTO" ]; then
    echo "-------------------------------------------------------"
    echo "⚠️ ERROR: La carpeta '$PROYECTO' ya existe."
    echo "Borra la carpeta o elige otro nombre para evitar líos."
    echo "-------------------------------------------------------"
else
    echo "✅ Nombre disponible. Iniciando construcción..."
    
    mkdir "$PROYECTO"
    cd "$PROYECTO"
    mkdir css js img
    touch index.html css/style.css js/script.js
    
    echo "🚀 Proyecto '$PROYECTO' creado con éxito."
fi