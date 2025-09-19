#!/usr/bin/env bash
# Script para exportar dependencias desde un environment de conda
# Uso:
#   chmod +x scripts/export_conda_env.sh
#   ./scripts/export_conda_env.sh my_env

set -euo pipefail

ENV_NAME="${1:-}"
if [[ -z "$ENV_NAME" ]]; then
  echo "Uso: $0 <conda-environment-name>"
  exit 2
fi

OUT_DIR="."
ENV_YML="$OUT_DIR/environment.yml"
REQ_TXT="$OUT_DIR/requirements.txt"

echo "Exportando environment de conda '$ENV_NAME'..."

# Export environment.yml (incluye canales y versiones)
conda env export -n "$ENV_NAME" --no-builds > "$ENV_YML"
echo "Guardado: $ENV_YML"

# Generar requirements.txt usando pip freeze dentro del environment
echo "Generando requirements.txt usando 'conda run -n $ENV_NAME pip freeze'..."
conda run -n "$ENV_NAME" pip freeze > "$REQ_TXT"
echo "Guardado: $REQ_TXT"

echo "Listo. Puedes usar 'conda env create -f environment.yml' para recrear el environment, o 'pip install -r requirements.txt' si usas virtualenv." 
