#!/bin/bash

# --- ENTRADA DE DATOS ---
echo "--- BIENVENIDO AL SISTEMA INTERACTIVO ---"

# Paso A: Nombre
echo "¿Cómo te llamas?"
read NOMBRE

# Paso B: Año Actual
echo "Hola $NOMBRE, ¿en qué año estamos hoy?"
read ANIO_ACTUAL

# Paso C: Edad
echo "¿Qué edad tienes actualmente?"
read EDAD

# --- PROCESAMIENTO (Lógica) ---
# Aquí sumamos 1 al año y 1 a la edad
PROXIMO_ANIO=$((ANIO_ACTUAL + 1))
EDAD_PROXIMA=$((EDAD + 1))

# --- SALIDA DE DATOS (Resultado) ---
echo "------------------------------------------------"
echo "¡REPORTE PERSONALIZADO PARA $NOMBRE!"
echo "Actualmente estamos en el $ANIO_ACTUAL."
echo "Pero prepárate, porque en el $PROXIMO_ANIO tendrás $EDAD_PROXIMA años."
echo "------------------------------------------------"