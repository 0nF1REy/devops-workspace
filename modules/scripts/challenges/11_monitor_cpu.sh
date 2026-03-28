#!/bin/bash
# Lista processos que estão utilizando mais de 10% de CPU
echo "Processos com uso significativo de CPU (>10%):"
ps -eo pid,ppid,cmd,%cpu --sort=-%cpu | awk '$4>10'
