#!/bin/bash

# 1. Pedimos el nombre
echo "Hola, soy tu asistente de terminal. ¿Cómo te llamas?"
read NOMBRE

# 2. Pedimos el año
echo "Mucho gusto, $NOMBRE. ¿En qué año estamos?"
read ANIO

# 3. Devolvemos el saludo personalizado
echo "------------------------------------------------"
echo "¡Perfecto! Hola $NOMBRE, estamos en el año $ANIO."
echo "Es un gran momento para seguir programando."
echo "------------------------------------------------"