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

## 🌐 Rede e Transferência

| Comando    | Descrição                            | Exemplo de uso               |
| ---------- | ------------------------------------ | ---------------------------- |
| curl       | Transferência de dados via URL       | `curl https://example.com`   |
| ping       | Testa conectividade e latência       | `ping -c 4 myanimelist.net`  |
| traceroute | Mostra o caminho dos pacotes na rede | `traceroute myanimelist.net` |
| nslookup   | Consulta DNS para resolver nomes     | `nslookup myanimelist.net`   |
| dig        | Consulta DNS avançada com detalhes   | `dig myanimelist.net`        |

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
