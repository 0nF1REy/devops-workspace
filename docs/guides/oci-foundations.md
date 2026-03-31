# ☁️ Fundamentos Oracle Cloud Infrastructure (OCI)

[← Voltar ao README](../../README.md)

## 📖 Conteúdo Teórico

### 1. Entendendo a OCI: Introdução e Modelos

O Oracle Cloud Infrastructure (OCI) é a plataforma de nuvem de próxima geração da Oracle, projetada para executar qualquer aplicação de forma mais rápida e segura por um custo menor. Ela combina a elasticidade e utilidade da nuvem pública com o controle, previsibilidade e desempenho da infraestrutura on-premises.

#### 1.1 Modelos de Nuvem e Implantação

- **On-premises (on-prem):** Infraestrutura física mantida localmente. Oferece controle total, mas exige altos investimentos em hardware e manutenção especializada.
- **Nuvem Distribuída (Distributed Cloud):** Permite que serviços de nuvem sejam executados em diferentes locais (data centers do cliente ou regiões externas), mantendo a consistência de gerenciamento e reduzindo latência.
- **Multi-Cloud:** Integração entre OCI e outros provedores (como AWS ou Azure) para aproveitar forças específicas de cada plataforma e evitar dependência de um único fornecedor.

### 2. Infraestrutura e Alta Disponibilidade

A infraestrutura global do OCI é estruturada em Regiões e Domínios de Disponibilidade (AD), focando em resiliência.

- **Domínios de Falha (Fault Domains):** Agrupamentos lógicos de hardware dentro de um AD. Funcionam como um "data center virtual" para proteger contra falhas físicas ou manutenção de hardware.
- **Escalabilidade:** Capacidade de ajustar recursos automaticamente conforme a demanda. No OCI, isso se aplica tanto a instâncias de computação quanto a clusters de containers e bancos de dados.

### 3. Identity and Access Management (IAM)

O IAM é o pilar de segurança que controla quem pode acessar quais recursos.

- **Tenancy:** A conta raiz e o ambiente principal da sua organização na OCI.
- **Compartimentos:** Coleções lógicas de recursos. Servem para organizar recursos, isolar projetos e aplicar políticas de acesso específicas. **Dica:** Não use o compartimento raiz para todos os seus recursos.
- **Autenticação (AuthN) e Autorização (AuthZ):** A AuthN verifica a identidade (senhas, MFA), enquanto a AuthZ define as permissões via políticas de grupo (RBAC).
- **OCID (Oracle Cloud Identifier):** Um ID único e imutável atribuído a cada recurso criado na nuvem.

### 4. Networking (Rede)

A **Virtual Cloud Network (VCN)** é a rede privada virtual onde seus recursos residem.

- **VCN e CIDR:** Cada VCN é definida por um bloco de IPs (CIDR). Ela reside em uma única região, mas pode abranger vários Domínios de Disponibilidade.
- **Gateways:**
  - **Internet Gateway:** Conectividade bidirecional com a internet.
  - **NAT Gateway:** Acesso à internet apenas para saída (útil para patches em sub-redes privadas).
  - **Service Gateway:** Acesso a serviços Oracle (como Object Storage) sem passar pela internet pública.
- **Load Balancer:** Distribui o tráfego para evitar sobrecarga. O **Network Load Balancer** opera na Camada 4 (Transporte - TCP/UDP), garantindo baixa latência.

### 5. Computação e Modernização

O **OCI Compute** oferece diversas formas de executar workloads, desde servidores físicos até funções sem servidor.

- **VM vs Bare Metal:** Máquinas Virtuais (VMs) oferecem flexibilidade e isolamento virtual, enquanto Bare Metal fornece acesso direto ao hardware para performance máxima.
- **Instâncias Flexíveis:** Permitem ajustar exatamente a quantidade de **Memória** e **OCPUs**.
- **Containers e OKE:** O Oracle Kubernetes Engine gerencia aplicações em containers de forma escalável.
- **Oracle Functions (Serverless):** Executa código apenas quando acionado por eventos ou chamadas HTTP. Você paga apenas pelo tempo de execução.

> **Exemplo Real:** Uma plataforma de streaming usa **OKE** para escalar containers de vídeo durante picos de acesso e **Functions** para processar notificações de novos pedidos de assinatura.

### 6. Armazenamento (Storage)

O armazenamento na OCI pode ser persistente (Block/File/Object) ou não persistente (NVMe local temporário).

- **Block Volume:** Armazenamento em bloco para sistemas operacionais e bancos de dados. Oferece níveis de desempenho, incluindo o **Ultra Alto Desempenho** para cargas críticas.
- **Object Storage:** Armazenamento de dados não estruturados (fotos, vídeos, backups).
  - **Nível Archive:** Ideal para backups de longo prazo, com custo baixíssimo mas tempo de recuperação maior.
  - **PAR (Pre-authenticated Request):** Fornece uma URL temporária e segura para acesso a objetos sem precisar de login.
- **File Storage:** Sistema de arquivos compartilhado (NFS) para acesso simultâneo de várias instâncias.
- **Migração:** Ferramentas como **Data Transfer Appliance** (físico) e **Storage Gateway** facilitam a transição de dados on-premise para a nuvem.

### 7. Bancos de Dados (Database)

A OCI oferece serviços gerenciados que eliminam a complexidade operacional.

- **Autonomous Database:** Banco de dados autogerenciado com recursos de:
  - **Autocondução (Self-driving):** Tuning e atualizações automáticas.
  - **Autorreparação (Self-healing):** Recuperação automática em caso de falhas.
- **MySQL HeatWave:** Acelera consultas analíticas (OLAP) utilizando processamento em memória, permitindo análises rápidas sem ferramentas externas.

### 8. Segurança e Conformidade

A segurança segue o **Modelo de Responsabilidade Compartilhada**: a Oracle protege a infraestrutura física, e o cliente protege os dados e configurações.

- **WAF:** Protege aplicações contra ataques web (SQL Injection).
- **OCI Vault:** Gerencia chaves de criptografia e segredos (senhas/tokens) de forma centralizada.
- **Cloud Guard:** Monitora continuamente o ambiente para identificar riscos e remediar problemas automaticamente.
- **Security Zones:** Áreas que impõem políticas rígidas de segurança desde a criação do recurso.

### 9. Governança e Administração

Gestão financeira e organizacional para manter o ambiente eficiente.

- **Cost Management:** Ferramenta para criar orçamentos (Budgets) com alertas por e-mail quando os limites são atingidos.
- **Cloud Advisor:** Sugere melhorias em custos, segurança e performance baseadas em inteligência.
- **Tagging:** Uso de etiquetas para organizar recursos por projeto ou equipe, facilitando o rastreamento de custos.
- **Limites vs Cotas:** Limites de serviço são definidos pela Oracle; Cotas de compartimento são definidas pelo usuário para restringir o uso em áreas específicas.

---

## 📝 Questões e Simulado

| Pergunta                                                                      | Resposta Correta                                             |
| :---------------------------------------------------------------------------- | :----------------------------------------------------------- |
| **Proteção contra falha de hardware em um único AD?**                         | **Domínio de Falha (Fault Domain)**.                         |
| **Afirmação FALSA sobre Domínios de Falha?**                                  | "Um domínio de falha pode ser associado a múltiplos ADs".    |
| **Serviço NÃO destinado a multicloud?**                                       | **Oracle Roving Edge Infrastructure**.                       |
| **Como organizar usuários em equipes no IAM?**                                | Através de **Grupos**.                                       |
| **Identificador único de recursos OCI?**                                      | **OCID**.                                                    |
| **Qual gateway permite acesso de saída para internet em sub-redes privadas?** | **Gateway NAT**.                                             |
| **Camada do Network Load Balancer?**                                          | **Camada 4 (Transporte)**.                                   |
| **O que pode ser personalizado em instâncias flexíveis?**                     | **Memória e OCPUs**.                                         |
| **Propósito do OCI Functions?**                                               | Executar código em resposta a **eventos ou HTTP**.           |
| **Afirmação FALSA sobre Armazenamento Archive?**                              | "Bucket Archive pode ser atualizado para Standard".          |
| **Como o Block Volume garante durabilidade?**                                 | Através de **Replicação**.                                   |
| **Nível de performance para DBs exigentes no Block Volume?**                  | **Ultra alto desempenho**.                                   |
| **Função da URL Pré-Autenticada (PAR)?**                                      | Fornecer **acesso temporário e seguro** a um objeto.         |
| **Recurso de ajuste automático do Autonomous DB?**                            | **Autocondução (Self-driving)**.                             |
| **Como o MySQL HeatWave acelera performance?**                                | Usando **armazenamento de dados em memória**.                |
| **Tipo de processamento do HeatWave?**                                        | **Processamento Analítico Online (OLAP)**.                   |
| **Vantagem das Zonas de Segurança?**                                          | Garantir adesão às **melhores práticas e políticas**.        |
| **Componente que NÃO pertence ao Cloud Guard?**                               | **Alvos** (Targets).                                         |
| **Propósito do OCI Vault?**                                                   | Gerenciar **chaves de criptografia e segredos**.             |
| **Diferença entre Limites e Cotas?**                                          | Limites são da Oracle; **Cotas são definidas pelo usuário**. |
| **Fator que NÃO costuma influenciar o preço na OCI?**                         | **Escolha da região** (Política de preço global).            |
| **Como receber avisos sobre gastos?**                                         | Configurar **Notificações/Alertas de orçamento**.            |
