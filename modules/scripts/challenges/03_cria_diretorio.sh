#!/bin/bash
# Script que solicita um nome de diretório e cria

read -p "Digite o nome do diretório que deseja criar: " nome_dir

if [ -d "$nome_dir" ]; then
    echo "O diretório '$nome_dir' já existe."
else
    mkdir -p "$nome_dir"
    echo "Diretório '$nome_dir' criado com sucesso!"
fi

