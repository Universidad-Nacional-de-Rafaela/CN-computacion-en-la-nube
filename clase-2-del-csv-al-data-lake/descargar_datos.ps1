# Lo mismo que descargar_datos.sh, para Windows sin WSL.
# Uso: powershell -ExecutionPolicy Bypass -File descargar_datos.ps1
$ErrorActionPreference = "Stop"
# Sin esto, la barra de progreso hace muy lenta la descarga en PowerShell 5.1.
$ProgressPreference = "SilentlyContinue"
Set-Location $PSScriptRoot
$dest = "clase2-datos"
New-Item -ItemType Directory -Force -Path $dest | Out-Null
foreach ($anio in 2020..2026) {
  $f = Join-Path $dest "dat-ab-usos-$anio.csv"
  if ((Test-Path $f) -and ((Get-Item $f).Length -gt 0)) { Write-Host "ya está: $f"; continue }
  Write-Host "bajando $anio..."
  Invoke-WebRequest -Uri "https://archivos-datos.transporte.gob.ar/upload/Dat_Ab_Usos/dat-ab-usos-$anio.csv" -OutFile "$f.part"
  Move-Item -Force "$f.part" $f
}
Get-ChildItem $dest
