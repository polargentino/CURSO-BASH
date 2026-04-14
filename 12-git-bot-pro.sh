#!/bin/bash

# 1. Capturamos la hora para el registro técnico
HORA_ACTUAL=$(date +"%d/%m/%Y %H:%M")

echo "--- 🤖 GIT-BOT PRO V2.0 ---"

# 2. Pedimos la nota personalizada
echo "¿Qué aprendiste o cambiaste en esta sesión?"
read -p "> " NOTA_PERSONAL

# 3. Validamos que la nota no esté vacía (por si le das Enter sin querer)
if [ -z "$NOTA_PERSONAL" ]; then
    NOTA_PERSONAL="Sin descripción adicional"
fi

echo "🚀 Subiendo cambios con fecha: $HORA_ACTUAL..."

# 4. Flujo de Git
git add .

# Combinamos la hora y tu nota en el mensaje del commit
git commit -m "[$HORA_ACTUAL] - $NOTA_PERSONAL"

git push origin main

echo "------------------------------------------------"
echo "✅ ¡GitHub actualizado!"
echo "Mensaje final: [$HORA_ACTUAL] - $NOTA_PERSONAL"
echo "------------------------------------------------"