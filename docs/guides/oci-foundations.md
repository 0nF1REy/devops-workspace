# ☁️ Fundamentos Oracle Cloud Infrastructure (OCI)

[← Voltar ao README](../../README.md)

---

## 🧭 Guia de Navegação (Índice)

- **[📖 Conteúdo Teórico](#conteúdo-teórico)**
  - **[1. Entendendo a OCI: Introdução e Modelos](#1-entendendo-a-oci-introdução-e-modelos)**
  - **[2. Infraestrutura e Alta Disponibilidade](#2-infraestrutura-e-alta-disponibilidade)**
  - **[3. Identity and Access Management (IAM)](#3-identity-and-access-management-iam)**
  - **[4. Networking (Rede)](#4-networking-rede)**
  - **[5. Computação e Modernização](#5-computação-e-modernização)**
  - **[6. Armazenamento (Storage)](#6-armazenamento-storage)**
  - **[7. Bancos de Dados (Database)](#7-bancos-de-dados-database)**
  - **[8. Segurança e Conformidade](#8-segurança-e-conformidade)**
  - **[9. Governança e Administração](#9-governança-e-administração)**
- **[📝 Questões e Simulado](#questões-e-simulado)**

---

<a name="conteúdo-teórico"></a>

## 📖 Conteúdo Teórico

<a name="1-entendendo-a-oci-introdução-e-modelos"></a>

### 1. Entendendo a OCI: Introdução e Modelos

O Oracle Cloud Infrastructure (OCI) é a plataforma de nuvem de próxima geração da Oracle, projetada para executar qualquer aplicação de forma mais rápida e segura por um custo menor. Ela combina a elasticidade e utilidade da nuvem pública com o controle, previsibilidade e desempenho da infraestrutura on-premises.

#### 1.1 Modelos de Nuvem e Implantação

- **On-premises (on-prem):** Infraestrutura física mantida localmente. Oferece controle total, mas exige altos investimentos em hardware e manutenção especializada.
- **Nuvem Distribuída (Distributed Cloud):** Permite que serviços de nuvem sejam executados em diferentes locais (data centers do cliente ou regiões externas), mantendo a consistência de gerenciamento e reduzindo latência.
- **Multi-Cloud:** Integração entre OCI e outros provedores (como AWS ou Azure) para aproveitar forças específicas de cada plataforma e evitar dependência de um único fornecedor.

<a name="2-infraestrutura-e-alta-disponibilidade"></a>

### 2. Infraestrutura e Alta Disponibilidade

A infraestrutura global do OCI é estruturada em Regiões e Domínios de Disponibilidade (AD), focando em resiliência.

- **Domínios de Falha (Fault Domains):** Agrupamentos lógicos de hardware dentro de um AD. Funcionam como um "data center virtual" para proteger contra falhas físicas ou manutenção de hardware.
- **Escalabilidade:** Capacidade de ajustar recursos automaticamente conforme a demanda. No OCI, isso se aplica tanto a instâncias de computação quanto a clusters de containers e bancos de dados.

<a name="3-identity-and-access-management-iam"></a>

### 3. Identity and Access Management (IAM)

O IAM é o pilar de segurança que controla quem pode acessar quais recursos.

- **Tenancy:** A conta raiz e o ambiente principal da sua organização na OCI.
- **Compartimentos:** Coleções lógicas de recursos. Servem para organizar recursos, isolar projetos e aplicar políticas de acesso específicas. **Dica:** Não use o compartimento raiz para todos os seus recursos.
- **Autenticação (AuthN) e Autorização (AuthZ):** A AuthN verifica a identidade (senhas, MFA), enquanto a AuthZ define as permissões via políticas de grupo (RBAC).
- **OCID (Oracle Cloud Identifier):** Um ID único e imutável atribuído a cada recurso criado na nuvem.

<a name="4-networking-rede"></a>

### 4. Networking (Rede)

A **Virtual Cloud Network (VCN)** é a rede privada virtual onde seus recursos residem.

- **VCN e CIDR:** Cada VCN é definida por um bloco de IPs (CIDR). Ela reside em uma única região, mas pode abranger vários Domínios de Disponibilidade.
- **Gateways:**
  - **Internet Gateway:** Conectividade bidirecional com a internet.
  - **NAT Gateway:** Acesso à internet apenas para saída (útil para patches em sub-redes privadas).
  - **Service Gateway:** Acesso a serviços Oracle (como Object Storage) sem passar pela internet pública.
- **Load Balancer:** Distribui o tráfego para evitar sobrecarga. O **Network Load Balancer** opera na Camada 4 (Transporte - TCP/UDP), garantindo baixa latência.

<a name="5-computação-e-modernização"></a>

### 5. Computação e Modernização

O **OCI Compute** oferece diversas formas de executar workloads, desde servidores físicos até funções sem servidor.

- **VM vs Bare Metal:** Máquinas Virtuais (VMs) oferecem flexibilidade e isolamento virtual, enquanto Bare Metal fornece acesso direto ao hardware para performance máxima.
- **Instâncias Flexíveis:** Permitem ajustar exatamente a quantidade de **Memória** e **OCPUs**.
- **Containers e OKE:** O Oracle Kubernetes Engine gerencia aplicações em containers de forma escalável.
- **Oracle Functions (Serverless):** Executa código apenas quando acionado por eventos ou chamadas HTTP. Você paga apenas pelo tempo de execução.

> **Exemplo Real:** Uma plataforma de streaming usa **OKE** para escalar containers de vídeo durante picos de acesso e **Functions** para processar notificações de novos pedidos de assinatura.

<a name="6-armazenamento-storage"></a>

### 6. Armazenamento (Storage)

O armazenamento na OCI pode ser persistente (Block/File/Object) ou não persistente (NVMe local temporário).

- **Block Volume:** Armazenamento em bloco para sistemas operacionais e bancos de dados. Oferece níveis de desempenho, incluindo o **Ultra Alto Desempenho** para cargas críticas.
- **Object Storage:** Armazenamento de dados não estruturados (fotos, vídeos, backups).
  - **Nível Archive:** Ideal para backups de longo prazo, com custo baixíssimo mas tempo de recuperação maior.
  - **PAR (Pre-authenticated Request):** Fornece uma URL temporária e segura para acesso a objetos sem precisar de login.
- **File Storage:** Sistema de arquivos compartilhado (NFS) para acesso simultâneo de várias instâncias.
- **Migração:** Ferramentas como **Data Transfer Appliance** (físico) e **Storage Gateway** facilitam a transição de dados on-premise para a nuvem.

<a name="7-bancos-de-dados-database"></a>

### 7. Bancos de Dados (Database)

A OCI oferece serviços gerenciados que eliminam a complexidade operacional.

- **Autonomous Database:** Banco de dados autogerenciado com recursos de:
  - **Autocondução (Self-driving):** Tuning e atualizações automáticas.
  - **Autorreparação (Self-healing):** Recuperação automática em caso de falhas.
- **MySQL HeatWave:** Acelera consultas analíticas (OLAP) utilizando processamento em memória, permitindo análises rápidas sem ferramentas externas.

<a name="8-segurança-e-conformidade"></a>

### 8. Segurança e Conformidade

A segurança segue o **Modelo de Responsabilidade Compartilhada**: a Oracle protege a infraestrutura física, e o cliente protege os dados e configurações.

- **WAF:** Protege aplicações contra ataques web (SQL Injection).
- **OCI Vault:** Gerencia chaves de criptografia e segredos (senhas/tokens) de forma centralizada.
- **Cloud Guard:** Monitora continuamente o ambiente para identificar riscos e remediar problemas automaticamente.
- **Security Zones:** Áreas que impõem políticas rígidas de segurança desde a criação do recurso.

<a name="9-governança-e-administração"></a>

### 9. Governança e Administração

Gestão financeira e organizacional para manter o ambiente eficiente.

- **Cost Management:** Ferramenta para criar orçamentos (Budgets) com alertas por e-mail quando os limites são atingidos.
- **Cloud Advisor:** Sugere melhorias em custos, segurança e performance baseadas em inteligência.
- **Tagging:** Uso de etiquetas para organizar recursos por projeto ou equipe, facilitando o rastreamento de custos.
- **Limites vs Cotas:** Limites de serviço são definidos pela Oracle; Cotas de compartimento são definidas pelo usuário para restringir o uso em áreas específicas.

---

<a name="questões-e-simulado"></a>

## 📝 Questões e Simulado

| Pergunta                                                                       | Resposta Correta                                                          |
| :----------------------------------------------------------------------------- | :------------------------------------------------------------------------ |
| **Vantagem principal do escalonamento vertical (Compute)?**                    | **Aumento de performance com mais OCPUs e memória**.                      |
| **Função primária do Auto-Tiering no Object Storage?**                         | Reduzir custos movendo dados entre **Standard e Infrequent Access**.      |
| **Diferença entre Load Balancer e Network Load Balancer?**                     | Load Balancer atua na **Camada 7**; Network na **Camada 4**.              |
| **O que o recurso "Auto-Tiering" faz no Object Storage?**                      | Move dados para níveis mais baratos baseando-se em **padrões de acesso**. |
| **Papel do Dynamic Routing Gateway (DRG)?**                                    | Caminho de tráfego entre VCN e **on-premises ou outra VCN**.              |
| **Como as quotas de compartimento são aplicadas?**                             | Em uma base **por compartimento** (per-compartment).                      |
| **Como o modelo BYOL ajuda a economizar?**                                     | Permite usar **licenças de software existentes** na OCI.                  |
| **Ferramenta para analisar padrões de gastos ao longo do tempo?**              | **Cost Analysis** (Análise de Custos).                                    |
| **Qual componente NÃO faz parte de uma política IAM?**                         | **Encryption** (Criptografia) ou Data backup frequency.                   |
| **No modelo de responsabilidade compartilhada, quem garante os dados?**        | **O cliente**.                                                            |
| **Afirmação FALSA sobre compartimentos?**                                      | "Eles armazenam e gerenciam chaves de criptografia e segredos." (Falso).  |
| **Por que escolher uma Região OCI próxima aos usuários?**                      | Para **minimizar a latência** e melhorar a performance.                   |
| **Oferta que permite rodar serviços OCI no seu próprio data center?**          | **OCI Dedicated Region**.                                                 |
| **O que melhor descreve o Autoscaling do Compute?**                            | Ajusta o número de instâncias baseado em **métricas definidas**.          |
| **Tipo de armazenamento associado diretamente a instâncias Compute?**          | **Block Storage** (Armazenamento em Bloco).                               |
| **Política de balanceamento de carga suportada pelo Load Balancer?**           | **Weighted Round Robin**.                                                 |
| **Componente da política IAM que define a quem ela se aplica?**                | **Principal**.                                                            |
| **Protocolo usado pelo File Storage Service para acesso?**                     | **NFS (Network File System)**.                                            |
| **Gateway que acessa serviços Oracle sem usar a internet pública?**            | **Service Gateway**.                                                      |
| **Propósito principal de configurar Budgets (Orçamentos)?**                    | **Monitorar e controlar gastos** em serviços OCI.                         |
| **Qual NÃO é um tipo de instância Compute na OCI?**                            | **Nano instances**.                                                       |
| **Recurso para migrar instâncias ligadas entre servidores físicos?**           | **Live Migration**.                                                       |
| **Vantagem das OCI Security Zones para gestão de recursos?**                   | Aplicar **configurações de segurança baseadas em melhores práticas**.     |
| **Objetivo de distribuir recursos entre múltiplos ADs?**                       | Melhorar a **tolerância a falhas e alta disponibilidade**.                |
| **Serviço OCI NÃO projetado para uso com múltiplos provedores?**               | **Oracle Roving Edge Infrastructure**.                                    |
| **Nível de Object Storage para dados raramente acessados?**                    | **Archive Storage**.                                                      |
| **Termo para combinação de shape, imagem e metadados de instância?**           | **Instance Configuration**.                                               |
| **Aumentar o tamanho de um Block Volume sem downtime?**                        | **Online Resizing**.                                                      |
| **Tipo de escalonamento feito adicionando instâncias a um pool?**              | **Horizontal Scaling** (Escalonamento Horizontal).                        |
| **Diferença entre Security Lists e Network Security Groups (NSGs)?**           | Security Lists aplicam-se a **subnets**; NSGs a **VNICs individuais**.    |
| **Característica chave do OCI Block Volume?**                                  | **Replicado automaticamente dentro de um AD** para alta durabilidade.     |
| **Recurso que impede mudanças arriscadas ou não conformes?**                   | **OCI Security Zones**.                                                   |
| **Componente que controla tráfego entre subnets dentro da mesma VCN?**         | **Security Lists**.                                                       |
| **Função principal da Route Table (Tabela de Roteamento)?**                    | Direcionar o tráfego da rede para o **destino correto**.                  |
| **Oferta para conformidade regulatória rodando na casa do cliente?**           | **OCI Dedicated Region**.                                                 |
| **Serviço que protege apps contra SQL Injection e Cross-site scripting?**      | **Web Application Firewall (WAF)**.                                       |
| **O que pode ser customizado em uma VM de formato flexível (Flexible Shape)?** | **Número de OCPUs e quantidade de memória**.                              |
| **Tipo de transferência de dados que geralmente é gratuita?**                  | **Ingress data transfer** (Transferência de entrada).                     |
| **Quem protege dados e aplicações no modelo compartilhado?**                   | **O Cliente**.                                                            |
| **Serviço que monitora continuamente riscos de segurança?**                    | **Cloud Guard**.                                                          |
