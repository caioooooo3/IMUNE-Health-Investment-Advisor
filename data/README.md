---

## Coleta, Armazenamento e Processamento dos Dados

Os dados brutos foram extraídos e estruturados através do seguinte pipeline:

1. **Extração:** Coleta dos arquivos fonte na plataforma **DataSUS** (Sistemas SIA/SIH).
2. **Conversão:** Processamento dos arquivos (`.dbc` / `.dbf`) para formato `.csv` via **TabWin**.
3. **Armazenamento (Data Lake):** Upload dos dados brutos (*RAW*) no **Oracle Cloud Infrastructure (OCI) Object Storage** em Buckets dedicados para persistência e governança.
4. **Carga e Análise:** Carga dos dados no banco **Oracle Autonomous Database** para execução dos scripts de limpeza, transformação e análise em SQL e outras ferramentas.
