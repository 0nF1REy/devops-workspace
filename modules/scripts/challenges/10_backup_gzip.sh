#!/bin/bash

read -p "Diretório a ser backupado: " origem
read -p "Diretório de destino: " destino
nome_arquivo="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

mkdir -p "$destino"

tar -czf "$destino/$nome_arquivo" -C "$origem" .
echo "Backup concluído: $destino/$nome_arquivo"
