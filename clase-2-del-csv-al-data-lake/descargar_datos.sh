#!/usr/bin/env bash
# Baja los datos abiertos de SUBE (uno por año, ~380 MB en total) a clase2-datos/.
# Si se corta, volvé a correrlo: saltea lo que ya bajó.
set -euo pipefail
cd "$(dirname "$0")"
DEST=clase2-datos
mkdir -p "$DEST"
for anio in 2020 2021 2022 2023 2024 2025 2026; do
  f="$DEST/dat-ab-usos-$anio.csv"
  if [ -s "$f" ]; then echo "ya está: $f"; continue; fi
  echo "bajando $anio..."
  curl -fL --retry 3 -o "$f.part" "https://archivos-datos.transporte.gob.ar/upload/Dat_Ab_Usos/dat-ab-usos-$anio.csv"
  mv "$f.part" "$f"
done
echo "listo:"; ls -lh "$DEST"
