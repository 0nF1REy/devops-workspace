# ☁️ Fundamentos Oracle Cloud Infrastructure (OCI)

[← Voltar ao README](../../README.md)

## 📖 Conteúdo Teórico

### 1. Introdução ao Oracle Cloud Infrastructure (OCI)

O Oracle Cloud Infrastructure (OCI) é a plataforma de nuvem da Oracle que oferece uma ampla gama de serviços, incluindo computação, armazenamento, redes, bancos de dados e segurança. Ele permite que empresas executem aplicações de maneira escalável, confiável e com desempenho otimizado, aproveitando tanto recursos dedicados quanto serviços gerenciados de forma flexível.

Foi desenvolvido para fornecer às empresas uma alternativa robusta às nuvens públicas tradicionais, com foco em segurança, governança e alta performance. A plataforma suporta workloads críticos de missão, oferecendo integração com soluções legadas da Oracle e compatibilidade com arquiteturas modernas baseadas em nuvem.

#### 1.1 Modelos de Nuvem e Implantação

- **On-premises (on-prem):** Refere-se à infraestrutura de TI mantida fisicamente dentro da própria empresa. Embora ofereça maior controle e customização, demanda altos investimentos em hardware, manutenção e pessoal especializado.
- **Nuvem Distribuída (Distributed Cloud):** Permite que serviços de nuvem sejam executados em diferentes localidades físicas, incluindo data centers da própria empresa ou regiões externas, mantendo consistência de gerenciamento e políticas de segurança. Isso possibilita reduzir latência e cumprir requisitos regulatórios locais.
- **Multi-Cloud:** O OCI oferece integração com outras nuvens públicas, permitindo distribuir workloads entre diferentes provedores para aproveitar pontos fortes específicos de cada plataforma e evitar a dependência exclusiva de um único fornecedor.

### 2. Infraestrutura e Alta Disponibilidade

A infraestrutura global do OCI é projetada para resiliência e escalabilidade, utilizando conceitos de regiões e domínios.

#### 2.1 Domínios de Falha (Fault Domains)

Para proteger recursos contra falhas dentro de um domínio de disponibilidade, utiliza-se o **Domínio de Falha**. Cada domínio de falha representa um grupo lógico de hardware isolado dentro da mesma região e domínio de disponibilidade.

- **Funcionamento:** Distribuir instâncias entre múltiplos domínios de falha garante que falhas de hardware ou manutenção afetem apenas parte do serviço.
- **Restrição:** No OCI, cada domínio de falha pertence a apenas um domínio de disponibilidade; ele não pode se estender entre múltiplos domínios de disponibilidade.

#### 2.2 Escalabilidade

A escalabilidade permite que aplicações ajustem automaticamente recursos de computação e containers conforme a demanda, garantindo desempenho consistente e alta disponibilidade sem desperdício de recursos.

### 3. Segurança e Identidade (IAM)

O **Oracle Identity and Access Management (IAM)** gerencia identidades de usuários, grupos e recursos, controlando quem pode acessar o quê.

- **Tenancy:** É a unidade central de gerenciamento, representando a conta raiz da organização na OCI. Fornece isolamento completo de dados e recursos.
- **Autenticação (AuthN) e Autorização (AuthZ):**
  - **AuthN:** Verifica a identidade (senha, chaves de API, MFA).
  - **AuthZ:** Define o que o usuário pode fazer através de políticas baseadas em funções (RBAC).
- **Grupos:** Permitem agrupar múltiplos usuários para facilitar a aplicação de políticas de acesso de forma centralizada e consistente.
- **Compartimentos:** São coleções de recursos relacionados. A prática recomendada é criar compartimentos específicos para diferentes projetos ou equipes, evitando criar todos os recursos no compartimento raiz.
- **OCID (Oracle Cloud Identifier):** Identificador global imutável e único para cada recurso na OCI (instâncias, bancos de dados, etc).

### 4. Redes e Conectividade

#### 4.1 Virtual Cloud Networking (VCN)

A **VCN** é a rede virtual privada que conecta recursos de forma segura. Uma VCN pode residir apenas em uma única região, mas pode abranger vários domínios de disponibilidade.

- **CIDR (Classless Inter-Domain Routing):** Usado para definir faixas de endereços IP atribuídas à rede (ex: `x.x.x.x/y`), facilitando a segmentação e evitando sobreposições.
- **Gateways:**
  - **Gateway NAT:** Permite que instâncias em sub-redes privadas acessem a internet para saída de tráfego (downloads/updates), bloqueando tráfego de entrada não solicitado.
  - **Gateway de Emparelhamento Local:** Deve ser configurado manualmente para conectar VCNs na mesma região (não é criado por padrão).
- **VCN Peering:** Cria uma conexão privada direta entre VCNs sem depender de VPN ou internet pública.

#### 4.2 Balanceamento de Carga

Essencial para evitar sobrecarga, lentidão e pontos únicos de falha.

- **Network Load Balancer:** Opera na **Camada 4 (Transporte)**, direcionando tráfego TCP/UDP com baixa latência.
- **Benefícios:** Garante que a escalabilidade automática funcione e que a manutenção de um nó não cause downtime no serviço.

### 5. Computação e Modernização

#### 5.1 OCI Compute: VM e Bare Metal

- **Máquinas Virtuais (VMs):** Oferecem isolamento virtual, ideais para ambientes flexíveis.
- **Bare Metal:** Acesso direto ao hardware físico para máximo desempenho em cargas críticas.
- **Processadores:** Estão disponíveis Intel, AMD e Ampere (ARM). O Snapdragon **não** está disponível para instâncias OCI.
- **Instâncias Flexíveis:** Permitem personalizar especificamente a quantidade de **memória** e o número de **OCPUs**.
- **Armazenamento:** O tipo associado para boot e volumes de dados no Compute é o **Armazenamento em Bloco**.

> **Exemplo Real:** Um e-commerce roda seu banco de dados em bare metal para máxima performance em picos de vendas, enquanto usa VMs para servidores web escaláveis horizontalmente atrás de um balanceador.

#### 5.2 Containers e Serverless

- **Containers:** Unidades leves que empacotam a aplicação e dependências.
- **Oracle Kubernetes Engine (OKE):** Serviço gerenciado para orquestração de containers.
- **Oracle Functions:** Plataforma **Serverless** que executa código em resposta a eventos ou solicitações HTTP, cobrando apenas pelo tempo de execução.

> **Exemplo Real (OKE):** Uma plataforma de streaming que escala containers automaticamente conforme o número de usuários simultâneos aumenta.
> **Exemplo Real (Functions):** Um e-commerce que usa uma função para processar o estoque e enviar e-mail sempre que um novo pedido é criado.

---

## 📝 Questões e Simulado

| Pergunta                                                                                | Resposta Correta                                                                          |
| :-------------------------------------------------------------------------------------- | :---------------------------------------------------------------------------------------- |
| Qual recurso protege contra falhas de hardware dentro de um domínio de disponibilidade? | **Domínio de Falha (Fault Domain)**                                                       |
| Qual afirmação sobre Domínios de Falha é FALSA?                                         | "Um único domínio de falha pode ser associado a múltiplos domínios de disponibilidade."   |
| Qual serviço OCI NÃO é destinado a soluções multicloud?                                 | **Oracle Roving Edge Infrastructure**                                                     |
| Qual estratégia de HA usar em um único domínio de disponibilidade?                      | Colocar recursos em diferentes **Domínios de Falha**.                                     |
| Qual componente OCI organiza usuários em equipes para aplicar políticas?                | **Grupos**                                                                                |
| É uma prática recomendada criar todos os recursos no compartimento raiz?                | **Não**. Deve-se usar compartimentos específicos para isolamento.                         |
| Qual componente NÃO pertence ao IAM?                                                    | **Grupo de Segurança de Rede (NSG)**                                                      |
| Como os recursos são identificados de forma única no OCI?                               | **OCID**                                                                                  |
| O emparelhamento de VCN (Peering) é baseado em VPN?                                     | **Não**, é uma conexão privada direta.                                                    |
| Qual a abrangência de uma VCN?                                                          | Reside em uma **única região**, mas pode abranger vários **domínios de disponibilidade**. |
| Qual componente NÃO é criado por padrão em uma VCN?                                     | **Gateway de Emparelhamento Local Padrão**                                                |
| Em qual camada do modelo OSI opera o Balanceador de Carga de Rede?                      | **Camada 4 (Transporte)**                                                                 |
| Qual gateway permite acesso à internet para instâncias privadas apenas para saída?      | **Gateway NAT**                                                                           |
| Qual o propósito do Oracle Cloud Infrastructure Functions?                              | Executar código em resposta a **eventos ou solicitações HTTP** sem gerenciar servidores.  |
| Quais parâmetros são personalizáveis em instâncias de computação flexíveis?             | **Memória e OCPUs**.                                                                      |
| Qual tipo de armazenamento é associado ao serviço OCI Compute?                          | **Armazenamento em Bloco**.                                                               |
| Qual processador NÃO está disponível no OCI Compute?                                    | **Snapdragon**.                                                                           |
