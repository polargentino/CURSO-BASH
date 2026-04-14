#!/bin/bash

# --- 1. CAPTURA DE LA HORA ---
# %d: día, %m: mes, %Y: año, %H: hora, %M: minutos
HORA_ACTUAL=$(date +"%d/%m/%Y %H:%M")

echo "--- 🤖 GIT-BOT INICIANDO ---"
echo "Hora detectada: $HORA_ACTUAL"

# --- 2. FLUJO DE GIT ---

# Añadir todos los cambios (archivos nuevos y modificados)
git add .

# Hacer el commit con el mensaje automático
# Usamos las comillas para que el mensaje sea una sola frase
git commit -m "Avance del curso - $HORA_ACTUAL"

# Empujar a GitHub (asumiendo que estás en la rama 'main')
# Si tu rama se llama 'master', cambia main por master
git push origin main

echo "------------------------------------------------"
echo "✅ ¡Todo subido a GitHub con éxito!"
echo "Mensaje: Avance del curso - $HORA_ACTUAL"
echo "------------------------------------------------"