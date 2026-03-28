#!/bin/bash

read -p "Informe o diretório: " dir
read -p "Digite o prefixo (deixe vazio se não quiser): " prefixo
read -p "Digite o sufixo (deixe vazio se não quiser, ex: _novo): " sufixo

cd "$dir" || { echo "Diretório não encontrado!"; exit 1; }

for arquivo in *; do
    if [ -f "$arquivo" ]; then
        nome=$(basename "$arquivo")
        mv "$arquivo" "${prefixo}${nome}${sufixo}"
    fi
done

echo "Arquivos renomeados com sucesso!"
