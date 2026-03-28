#!/bin/bash

read -p "Quantos usuários deseja criar? " total

for ((i=1;i<=total;i++)); do
    read -p "Nome do usuário $i: " usuario
    read -p "Nome completo: " nome
    read -p "Senha: " senha
    sudo useradd -m -c "$nome" "$usuario"
    echo "$usuario:$senha" | sudo chpasswd
    echo "Usuário $usuario criado com sucesso!"
done
