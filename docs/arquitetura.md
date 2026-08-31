# Arquitetura da Solução

## Visão Geral

O projeto IMUNE - Health Investment Advisor utiliza uma arquitetura composta por ingestão e tratamento de dados, armazenamento em banco relacional Oracle, camada analítica em SQL e visualização em Oracle APEX.

## Fluxo de Dados

1. Fonte de dados hospitalares
2. Tratamento e preparação dos dados
3. Armazenamento no Oracle Autonomous Database
4. Consultas e agregações em SQL
5. Consumo analítico pelo Oracle APEX
6. Geração de dashboards, rankings e indicadores
7. Apoio à investigação e priorização de unidades hospitalares

## Camadas da Arquitetura

### 1. Origem dos dados

Dados hospitalares utilizados para análise de atendimentos, perfil dos pacientes, solicitações, autorizações, altas e permanências.

### 2. Processamento e tratamento

Os dados são preparados para análise, incluindo tratamento de valores ausentes, padronização de campos e organização das variáveis utilizadas no projeto.

### 3. Persistência

Os dados são armazenados no Oracle Autonomous Database.

Tabela principal utilizada no MVP:

`ADMIN.BARI`

### 4. Camada Analítica

As consultas SQL realizam:

- agregações por hospital;
- cálculo de volume de atendimentos;
- cálculo de idade média;
- cálculo do tempo médio de autorização;
- análise temporal;
- análise de sexo e raça;
- classificação de prioridade de investigação.

### 5. Aplicação

O Oracle APEX é utilizado como camada de apresentação e interação.

Principais funcionalidades:

- Dashboard Geral;
- filtro interativo por hospital;
- KPIs;
- gráficos comparativos;
- análise temporal;
- ranking de prioridade;
- análise hospitalar;
- drill-down;
- detalhe por hospital.

### 6. Apoio à Decisão

A aplicação transforma dados hospitalares em indicadores capazes de auxiliar a identificação de unidades que apresentam maior tempo médio de autorização e que podem exigir investigação adicional.

## Arquitetura Resumida

```text
Fonte de Dados
      ↓
Tratamento / Preparação
      ↓
Oracle Autonomous Database
      ↓
SQL / Camada Analítica
      ↓
Oracle APEX
      ↓
Dashboards e Indicadores
      ↓
Insights e Priorização