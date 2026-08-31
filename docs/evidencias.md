# Evidências Visuais da Solução

Esta seção reúne as principais evidências visuais do MVP desenvolvido no projeto IMUNE - Health Investment Advisor.

## 1. Dashboard Geral

![Dashboard Geral](evidencias/01_dashboard_geral.png)

O Dashboard Geral apresenta uma visão executiva da operação, com indicadores principais, volume de atendimentos por hospital, evolução temporal e tempo médio de autorização.

---

## 2. Filtro por Hospital

![Filtro por Hospital](evidencias/02_filtro_hospital.png)

O filtro permite selecionar uma unidade hospitalar e atualizar dinamicamente os indicadores e gráficos relacionados, utilizando Dynamic Actions no Oracle APEX.

---

## 3. Análise Hospitalar

![Análise Hospitalar](evidencias/03_analise_hospitalar.png)

A página de Análise Hospitalar consolida indicadores por unidade, permitindo comparar volume de atendimentos, idade média, tempo médio de autorização, altas e permanências.

---

## 4. Atendimentos ao Longo do Tempo

![Atendimentos ao Longo do Tempo](evidencias/04_atendimentos_tempo.png)

O gráfico apresenta a evolução do volume de atendimentos ao longo do tempo, permitindo identificar mudanças e concentrações temporais nos registros analisados.

---

## 5. Detalhe Hospitalar

![Detalhe Hospitalar](evidencias/04_detalhe_hospitalar.png)

A página de Detalhe Hospitalar apresenta uma visão aprofundada da unidade selecionada, com KPIs e análises específicas do hospital.

---

## 6. Prioridade de Investigação

![Prioridade de Investigação](evidencias/05_prioridade_investigacao.png)

O ranking de prioridade destaca hospitais com maior tempo médio de autorização.

A classificação utilizada no MVP é:

- Alta: tempo médio de autorização >= 20 dias
- Média: tempo médio de autorização entre 5 e 20 dias
- Baixa: tempo médio de autorização inferior a 5 dias

A classificação é uma heurística criada para o MVP e não representa um indicador clínico oficial.

---

## 7. Tempo Médio de Autorização por Hospital

![Tempo Médio de Autorização por Hospital](evidencias/06_tempo_medio.png)

A visualização compara o tempo médio entre solicitação e autorização entre as unidades hospitalares, contribuindo para a identificação de possíveis gargalos operacionais.