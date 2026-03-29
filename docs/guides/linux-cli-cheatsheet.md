# 🐧 Cheatsheet de Comandos Linux (CLI)

[← Voltar ao README](../../README.md)

| Pacote / Serviço      | Descrição                                                                           | Exemplo de uso                                                                                            |
| --------------------- | ----------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------- |
| openssh               | Conjunto de ferramentas para acesso remoto seguro via SSH                           | `ssh user@ip_da_maquina`                                                                                  |
| openssl               | Ferramenta para criptografia, geração de certificados e testes SSL                  | `openssl version` <br> `openssl s_client -connect example.com:443`                                        |
| openssl (certificado) | Gerar certificado autoassinado para HTTPS                                           | `openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 \` <br> `-keyout server.key -out server.crt` |
| tree                  | Exibe a estrutura de diretórios em formato de árvore                                | `tree -I "node_modules"`                                                                                  |
| curl                  | Cliente de transferência de dados via URL                                           | `curl https://example.com`                                                                                |
| vim                   | Editor de texto avançado para terminal                                              | `vim arquivo.txt`                                                                                         |
| nginx                 | Servidor web e proxy reverso                                                        | `sudo systemctl start nginx`                                                                              |
| coreutils             | Utilitários essenciais do sistema, incluindo `uname`                                | `uname -a`                                                                                                |
| procps-ng             | Ferramentas para monitoramento e gerenciamento de processos                         | `top` <br> `ps aux`                                                                                       |
| cronie                | Demon para execução de tarefas agendadas via cron                                   | `crontab -l` <br> `crontab -e` <br> `systemctl start cronie`                                              |
| systemd               | Sistema de inicialização e gerenciamento de serviços; inclui `journalctl` para logs | `journalctl -p err -n 10` <br> `journalctl -u nginx`                                                      |
