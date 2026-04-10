#!/bin/bash

# Mensaje de bienvenida con estilo
echo "------------------------------------------"
echo "  🚀 GENERADOR DE PROYECTOS MULTIMEDIA IA  "
echo "------------------------------------------"

# 1. Pedir nombre del proyecto
read -p "Introduce el nombre del proyecto: " NOMBRE

# 2. Crear estructura inteligente
mkdir -p $NOMBRE/{css,js,img,video,audio}
touch $NOMBRE/index.html $NOMBRE/css/style.css $NOMBRE/js/script.js

# 3. Inyectar código base en el HTML
cat <<EOF > $NOMBRE/index.html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>$NOMBRE - AI Project</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <h1>Bienvenido a $NOMBRE</h1>
    <p>Proyecto generado automáticamente con Bash.</p>
    <script src="js/script.js"></script>
</body>
</html>
EOF

# 4. Inicializar Git automáticamente
cd $NOMBRE
git init
git add .
git commit -m "Estructura inicial automatizada"

echo "------------------------------------------"
echo "✅ ¡Listo! Carpeta '$NOMBRE' creada y git inicializado."
echo "Escribe 'cd $NOMBRE' para empezar a trabajar."