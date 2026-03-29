# 🔐 Secure API (HTTPS com Node.js)

Uma API simples em Node.js utilizando HTTPS com certificado autoassinado, com o objetivo de demonstrar comunicação segura entre cliente e servidor.

---

## 🚀 Tecnologias utilizadas

- Node.js
- Express
- HTTPS (módulo nativo)
- OpenSSL (para geração de certificado)

---

## 📁 Estrutura do projeto

secure-api-demo/
├── server.js
├── package.json
├── server.key # (gerado localmente)
├── server.crt # (gerado localmente)

---

## ⚠️ Importante

Os arquivos `server.key` e `server.crt` NÃO estão versionados por segurança.

Você precisa gerá-los localmente antes de rodar o projeto.

---

## 🛠️ Como rodar o projeto

### 1. Clonar o repositório

git clone https://github.com/0nF1REy/devops-workspace.git
cd devops-workspace/modules/services/api/01_secure_https

---

### 2. Instalar dependências

npm install

---

### 3. Gerar certificado HTTPS

Execute o comando abaixo:

```bash
openssl req -x509 -sha256 -nodes -days 365 -newkey rsa:2048 \
-keyout src/server.key -out src/server.crt
```

👉 Pode pressionar ENTER em todas as perguntas.

---

### 4. Iniciar o servidor

npm start

ou

node server.js

---

## 🌐 Acessar a API

- https://localhost:8000
- https://localhost:8000/api

---

## ⚠️ Aviso de segurança

Como o certificado é autoassinado, o navegador exibirá um aviso de conexão não segura.

Isso é esperado em ambiente de desenvolvimento.

---

## 🎯 Objetivo do projeto

Este projeto foi criado para:

- Demonstrar o uso de HTTPS no Node.js
- Entender como funcionam certificados SSL/TLS
- Simular um ambiente seguro de API
- Servir como base para estudos de segurança e DevOps

---

## 📌 Observação

Em ambientes de produção, o HTTPS não é configurado diretamente na aplicação Node.js, mas sim por meio de:

- Proxy reverso (ex: Nginx)
- Plataformas cloud (ex: Vercel, AWS, Cloudflare)
