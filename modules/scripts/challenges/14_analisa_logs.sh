#!/bin/bash
# 14_analisa_logs.sh
# Script para analisar os logs do sistema em busca de mensagens de erro relacionadas a processos

# Arquivo de saída
LOG_SAIDA="erros_processos.log"

# Lista de processos a monitorar (adicione ou remova conforme necessário)
PROCESSOS=("nginx" "sshd" "cron")

# Limpa arquivo antigo
> "$LOG_SAIDA"

# Para cada processo, captura erros no journal
for PROC in "${PROCESSOS[@]}"; do
    echo "Erros do processo: $PROC" >> "$LOG_SAIDA"
    journalctl -p err -n 50 | grep -i "$PROC" >> "$LOG_SAIDA"
    echo "------------------------" >> "$LOG_SAIDA"
done

echo "Análise concluída. Resultados em $LOG_SAIDA"
