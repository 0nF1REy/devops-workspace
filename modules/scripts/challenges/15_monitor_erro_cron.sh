#!/bin/bash
# Monitora mensagens de erro no log do sistema
SAIDA="$HOME/erros_sistema.log"
# Ajuste para Arch Linux usando journalctl
journalctl -p err -n 5 >> "$SAIDA"
echo "Últimas 5 mensagens de erro registradas em $SAIDA"
