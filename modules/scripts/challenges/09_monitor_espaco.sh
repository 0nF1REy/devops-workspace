#!/bin/bash

echo "Espaço em disco atual:"
df -h
echo "----------------------"
echo "Espaço detalhado por diretório / montagens:"
du -h --max-depth=1 /
