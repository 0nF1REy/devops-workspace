#!/bin/bash
# Script que verifica se um arquivo existe

arquivo="$1"  # Primeiro argumento do script

if [ -z "$arquivo" ]; then
    echo "Uso: $0 nome_do_arquivo"
    exit 1
fi

if [ -f "$arquivo" ]; then
    echo "O arquivo '$arquivo' existe."
else
    echo "O arquivo '$arquivo' NÃO existe."
fi

