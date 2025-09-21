#!/bin/bash

if [ -z "$1" ]; then
  echo "Uso $0 <Nombre_de_la_carpeta>"
  exit 1
fi

dir="$1"

if [ -d "$dir" ]; then
  echo "La carpeta '$dir' ya existe."
  exit 1
fi

echo "Creando carpeta '$dir'..."
mkdir "$dir"

if [ $? -eq 0 ]; then
  echo "¡Carpeta '$dir' creada exitosamente!"
else
  echo "Error: No se pudo crear la carpeta '$dir'."
fi

cd $dir && python3 -m venv venv && touch index.py
