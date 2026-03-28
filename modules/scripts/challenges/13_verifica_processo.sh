#!/bin/bash
read -p "Digite o nome do processo a verificar: " processo
if pgrep -x "$processo" > /dev/null
then
    echo "O processo '$processo' está em execução."
else
    echo "O processo '$processo' não está em execução."
fi
