#!/bin/bash
# Lista os 10 processos que mais consomem memória
echo "Top 10 processos por uso de memória:"
ps -eo pid,ppid,cmd,%mem --sort=-%mem | head -n 11
