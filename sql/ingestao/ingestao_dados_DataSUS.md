# Ingestão dos dados DataSUS — IMUNE

## Fonte dos dados

- **Origem:** DataSUS
- **Arquivo original:** `ABSP2501.dbc`
- **Processamento:** conversão do arquivo `.dbc` para `.dbf` e posteriormente para `.csv`, através do `TabWin`
- **Arquivo utilizado na ingestão:** `RAW_BARIATRICA-JAN-2025-SPABSP2501.csv`
- Armazenamento inicial: Oracle Cloud Infrastructure Object Storage

## Processo de ingestão

O arquivo CSV foi carregado no Oracle Object Storage e posteriormente
importado para o Oracle Autonomous Database utilizando o recurso de
carregamento de dados do Oracle Database Actions.

## Destino

- Banco: Oracle Autonomous Database
- Schema: ADMIN
- Tabela: BARI

Após o carregamento, os dados passaram a ser disponibilizados na tabela
`ADMIN.BARI` para posterior tratamento, limpeza e análise utilizando SQL.
