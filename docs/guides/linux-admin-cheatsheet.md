# 🐧 Cheatsheet de Administração Linux

[← Voltar ao README](../../README.md)

---

## 🔐 Acesso e Segurança

| Comando               | Descrição                               | Exemplo de uso                                                                                            |
| --------------------- | --------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| openssh               | Acesso remoto seguro via SSH            | `ssh user@ip_da_maquina`                                                                                  |
| openssl               | Criptografia, certificados e testes SSL | `openssl version` <br> `openssl s_client -connect example.com:443`                                        |
| openssl (certificado) | Gerar certificado autoassinado          | `openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 \` <br> `-keyout server.key -out server.crt` |

---

## 📁 Arquivos e Navegação

| Comando | Descrição                                  | Exemplo de uso           |
| ------- | ------------------------------------------ | ------------------------ |
| tree    | Visualizar diretórios em formato de árvore | `tree -I "node_modules"` |
| vim     | Editor de texto no terminal                | `vim arquivo.txt`        |

---

## 🌐 Análise e Ferramentas de Rede

| Comando    | Descrição                                                  | Exemplo de uso                   |
| ---------- | ---------------------------------------------------------- | -------------------------------- |
| curl       | Transfere dados de/para URLs (HTTP, FTP, etc.)             | `curl https://example.com`       |
| ping       | Testa conectividade e mede latência (RTT) com um host      | `ping -c 4 example.com`          |
| traceroute | Mostra o caminho (saltos) dos pacotes até o destino        | `traceroute example.com`         |
| nslookup   | Resolve nomes de domínio para IPs (consulta DNS)           | `nslookup example.com`           |
| dig        | Consulta DNS avançada com respostas detalhadas             | `dig example.com`                |
| ipcalc     | Calcula rede, broadcast e faixa de IPs a partir de um CIDR | `ipcalc 192.168.0.100/24`        |
| ip a       | Exibe interfaces de rede e endereços IP configurados       | `ip a`                           |
| ip route   | Mostra a tabela de roteamento do sistema                   | `ip route`                       |
| ip neigh   | Exibe a tabela ARP (IP ↔ MAC) e estado dos vizinhos        | `ip neigh`                       |
| arp-scan   | Descobre hosts ativos na rede local via ARP                | `arp-scan --localnet`            |
| nmap -sn   | Detecta hosts ativos (ping scan) sem escanear portas       | `nmap -sn 192.168.0.0/24 --open` |

---

## ⚙️ Processos e Sistema

| Comando   | Descrição                                       | Exemplo de uso                                       |
| --------- | ----------------------------------------------- | ---------------------------------------------------- |
| procps-ng | Monitoramento de processos (`top`, `ps`)        | `top` <br> `ps aux`                                  |
| coreutils | Utilitários essenciais do sistema               | `uname -a`                                           |
| systemd   | Gerenciamento de serviços e logs (`journalctl`) | `journalctl -p err -n 10` <br> `journalctl -u nginx` |

---

## 💾 Armazenamento e Discos

| Comando        | Descrição                               | Exemplo de uso                            |
| -------------- | --------------------------------------- | ----------------------------------------- |
| lsblk          | Lista discos e partições                | `lsblk` <br> `lsblk -f`                   |
| df             | Uso de espaço em disco                  | `df -h`                                   |
| du             | Tamanho de diretórios/arquivos          | `du -sh *`                                |
| mount / umount | Montar e desmontar sistemas de arquivos | `mount /dev/sdb1 /mnt` <br> `umount /mnt` |

---

## ⏰ Automação

| Comando | Descrição                            | Exemplo de uso                                               |
| ------- | ------------------------------------ | ------------------------------------------------------------ |
| cronie  | Execução de tarefas agendadas (cron) | `crontab -l` <br> `crontab -e` <br> `systemctl start cronie` |

---

## 🌍 Servidores

| Comando | Descrição                    | Exemplo de uso               |
| ------- | ---------------------------- | ---------------------------- |
| nginx   | Servidor web e proxy reverso | `sudo systemctl start nginx` |
