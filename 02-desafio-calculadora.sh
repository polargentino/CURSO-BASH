#!/bin/bash

# --- 1. CAPTURA DE DATOS ---
echo "--- CALCULADORA DE EDAD AUTOMÁTICA ---"

read -p "¿Cómo te llamas? " NOMBRE
read -p "Hola $NOMBRE, ¿en qué año estamos? " ANIO_ACTUAL
read -p "¿En qué año naciste? " ANIO_NACIMIENTO

# --- 2. PROCESAMIENTO (LA MAGIA) ---
# Restamos el año actual menos el año de nacimiento
EDAD_CALCULADA=$((ANIO_ACTUAL - ANIO_NACIMIENTO))

# --- 3. SALIDA ---
echo "------------------------------------------------"
echo "Análisis completado para $NOMBRE:"
echo "Si naciste en $ANIO_NACIMIENTO y estamos en $ANIO_ACTUAL..."
echo "¡Entonces tienes (o cumplirás) $EDAD_CALCULADA años!"
echo "------------------------------------------------"