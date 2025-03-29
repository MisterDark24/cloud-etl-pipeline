#!/bin/bash

# Ruta al ejecutable de kitchen.sh
KITCHEN_PATH="/home/administrador/Descargas/data-integration/kitchen.sh"

# Obtener ruta absoluta del script (raíz del proyecto)
PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Carpeta que contiene los jobs
JOB_DIR="$PROJECT_ROOT/jobs"

# Carpeta de logs (absoluta)
LOG_DIR="$PROJECT_ROOT/logs"
mkdir -p "$LOG_DIR"

# Verificar que existan archivos .kjb
kjb_files=("$JOB_DIR"/*.kjb)
if [ ${#kjb_files[@]} -eq 0 ]; then
  echo "No se encontraron archivos .kjb en la carpeta '$JOB_DIR'."
  exit 1
fi

# Mostrar lista de jobs
echo "Selecciona el Job que deseas ejecutar:"
select job in "${kjb_files[@]}"; do
  if [[ -n "$job" ]]; then
    echo "Ejecutando: $job"
    
    # Nombre del archivo de log con ruta absoluta
    LOGFILE="$LOG_DIR/$(basename "$job" .kjb)_$(date +%F_%H-%M-%S).log"
    echo "📄 Log esperado: $LOGFILE"

    # Ejecutar kitchen con ruta absoluta al log
    "$KITCHEN_PATH" -file="$job" -level=Basic -logfile="$LOGFILE"

    # Verificar si se creó el log
    if [ -f "$LOGFILE" ]; then
      echo "✅ Log generado correctamente en: $LOGFILE"
    else
      echo "❌ El log no se generó. Verifica permisos o errores de ejecución."
    fi
    break
  else
    echo "Opción inválida. Intenta de nuevo."
  fi
done
