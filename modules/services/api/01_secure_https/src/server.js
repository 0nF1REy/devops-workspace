const fs = require("fs");
const https = require("https");
const express = require("express");
const path = require("path");

const app = express();

// Middleware
app.use(express.json());

/*
==========================================
ROTAS
==========================================
*/

app.get("/", (req, res) => {
  res.send("API rodando!");
});

app.get("/api", (req, res) => {
  res.json({
    mensagem: "Conexão funcionando",
    status: "ok",
  });
});

/*
==========================================
CONFIGURAÇÃO HTTPS 
==========================================
*/

const sslPath = path.join(__dirname);

try {
  const key = fs.readFileSync(path.join(sslPath, "server.key"));
  const cert = fs.readFileSync(path.join(sslPath, "server.crt"));

  https.createServer({ key, cert }, app).listen(8000, () => {
    console.log("HTTPS ativo em https://localhost:8000");
  });
} catch (error) {
  console.error("Erro ao iniciar HTTPS:");
  console.error(error.message);

  console.log("Iniciando em HTTP (fallback)...");

  app.listen(8000, () => {
    console.log("HTTP ativo em http://localhost:8000");
  });
}
