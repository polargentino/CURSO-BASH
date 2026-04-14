#!/bin/bash

echo "--- 📝 GENERADOR DE DOCUMENTACIÓN (README) ---"

# 1. Pedir datos para la portada
read -p "Título del Proyecto: " TITULO
read -p "Breve descripción: " DESCRIPCION
read -p "Autor: " AUTOR

# 2. Crear el archivo README.md usando la técnica 'Here Document' (EOF)
# Esta técnica es la más limpia para escribir bloques largos de texto
cat <<EOF > README.md
# $TITULO

## 📝 Descripción
$DESCRIPCION

## 🚀 Tecnologías utilizadas
* HTML5 / CSS3
* JavaScript
* Shell Scripting (Bash)
* IA Generativa (Gemini)

## 🛠️ Instalación y Uso
Este proyecto fue generado automáticamente mediante un script de Bash.
1. Clona el repositorio.
2. Abre el archivo \`index.html\` en tu navegador.

---
**Autor:** $AUTOR
**Fecha de creación:** $(date +"%d/%m/%Y")
EOF

echo "------------------------------------------------"
echo "✅ Archivo README.md generado correctamente."
echo "Ahora GitHub mostrará esta información en la portada."
echo "------------------------------------------------"