-- ============================================================
-- IMUNE - Health Investment Advisor
-- Detalhe Hospitalar
-- ============================================================

-- Indicadores do hospital
WITH DADOS AS (
    SELECT
        COUNT(*) AS TOTAL_ATENDIMENTOS,
        ROUND(AVG(AP_NUIDADE), 1) AS IDADE_MEDIA,
        ROUND(AVG(AP_DTAUT - AP_DTSOLIC), 1) AS TEMPO_MEDIO_AUTORIZACAO,
        SUM(AP_ALTA) AS TOTAL_ALTAS
    FROM ADMIN.BARI
    WHERE AP_NOME_HOSPITAL = :P5_HOSPITAL
)
SELECT 'Atendimentos' AS INDICADOR,
       TO_CHAR(TOTAL_ATENDIMENTOS) AS VALOR,
       1 AS ORDEM
FROM DADOS

UNION ALL

SELECT 'Idade Média',
       TO_CHAR(IDADE_MEDIA) || ' anos',
       2
FROM DADOS

UNION ALL

SELECT 'Tempo Médio de Autorização',
       TO_CHAR(TEMPO_MEDIO_AUTORIZACAO) || ' dias',
       3
FROM DADOS

UNION ALL

SELECT 'Altas',
       TO_CHAR(TOTAL_ALTAS),
       4
FROM DADOS

ORDER BY ORDEM;


-- Evolução temporal do hospital
SELECT
    TO_CHAR(
        TRUNC(AP_DTSOLIC, 'MM'),
        'MON/YYYY',
        'NLS_DATE_LANGUAGE=PORTUGUESE'
    ) AS MES,
    COUNT(*) AS TOTAL
FROM ADMIN.BARI
WHERE AP_NOME_HOSPITAL = :P5_HOSPITAL
  AND AP_DTSOLIC IS NOT NULL
GROUP BY TRUNC(AP_DTSOLIC, 'MM')
ORDER BY TRUNC(AP_DTSOLIC, 'MM');


-- Distribuição por sexo
SELECT
    CASE AP_SEXO
        WHEN 'M' THEN 'Masculino'
        WHEN 'F' THEN 'Feminino'
        ELSE 'Não informado'
    END AS LABEL,
    COUNT(*) AS VALUE
FROM ADMIN.BARI
WHERE AP_NOME_HOSPITAL = :P5_HOSPITAL
GROUP BY AP_SEXO
ORDER BY VALUE DESC;


-- Distribuição por raça
SELECT
    NVL(AP_DESC_RACA, 'Não informado') AS LABEL,
    COUNT(*) AS VALUE
FROM ADMIN.BARI
WHERE AP_NOME_HOSPITAL = :P5_HOSPITAL
GROUP BY NVL(AP_DESC_RACA, 'Não informado')
ORDER BY VALUE DESC;