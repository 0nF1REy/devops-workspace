#!/bin/bash
# Script que cria um backup de um diretório específico

diretorio="/home/alan/devops-workspace"  # Diretório a ser copiado
backup="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

tar -czf "$backup" -C "$(dirname "$diretorio")" "$(basename "$diretorio")"

echo "Backup concluído: $backup"

