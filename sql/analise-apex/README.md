# Consultas SQL

Esta pasta contém as consultas utilizadas na camada analítica do projeto IMUNE.

## Arquivos

- `dashboard_geral.sql`: consultas utilizadas no dashboard executivo.
- `analise_hospitalar.sql`: consolidação e comparação entre hospitais.
- `detalhe_hospital.sql`: análises específicas de uma unidade hospitalar.
- `prioridade_investigacao.sql`: heurística utilizada para classificação de prioridade.

## Banco de dados

As consultas são executadas sobre o Oracle Autonomous Database e consumidas pela aplicação desenvolvida em Oracle APEX.

## Observação

A classificação de prioridade de investigação é uma heurística desenvolvida para o MVP e não representa um indicador clínico oficial.
