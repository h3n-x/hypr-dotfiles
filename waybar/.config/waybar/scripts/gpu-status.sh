#!/usr/bin/env bash
# Modulo custom de Waybar: muestra si la NVIDIA RTX 3050 esta activa
# (algun proceso usandola via offload) o inactiva (solo iGPU AMD en uso).
set -euo pipefail

if ! command -v nvidia-smi >/dev/null 2>&1; then
    echo '{"text":"","tooltip":"nvidia-smi no disponible","class":"hidden"}'
    exit 0
fi

PROCS=$(nvidia-smi --query-compute-apps=pid,process_name --format=csv,noheader 2>/dev/null || true)

if [[ -z "$PROCS" ]]; then
    echo '{"text":"󰢮 iGPU","tooltip":"NVIDIA RTX 3050 inactiva -- renderizando con AMD 760M","class":"idle"}'
else
    COUNT=$(echo "$PROCS" | wc -l)
    NAMES=$(echo "$PROCS" | cut -d, -f2 | tr '\n' ', ' | sed 's/, $//')
    echo "{\"text\":\"󰢮 NVIDIA ($COUNT)\",\"tooltip\":\"En uso por: $NAMES\",\"class\":\"active\"}"
fi
