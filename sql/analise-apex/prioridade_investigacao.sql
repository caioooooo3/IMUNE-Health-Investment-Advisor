-- ============================================================
-- IMUNE - Health Investment Advisor
-- Heurística de Prioridade de Investigação
-- ============================================================
--
-- Regra do MVP:
-- Alta  -> tempo médio de autorização >= 20 dias
-- Média -> tempo médio de autorização >= 5 dias e < 20 dias
-- Baixa -> tempo médio de autorização < 5 dias
--
-- IMPORTANTE:
-- Esta classificação é uma heurística criada para o MVP e
-- não representa um indicador clínico oficial.
-- ============================================================

SELECT
    AP_NOME_HOSPITAL AS HOSPITAL,
    COUNT(*) AS ATENDIMENTOS,
    ROUND(AVG(AP_DTAUT - AP_DTSOLIC), 1) AS TEMPO_MEDIO_AUTORIZACAO,
    CASE
        WHEN AVG(AP_DTAUT - AP_DTSOLIC) >= 20 THEN 'Alta'
        WHEN AVG(AP_DTAUT - AP_DTSOLIC) >= 5 THEN 'Média'
        ELSE 'Baixa'
    END AS NIVEL_ATENCAO
FROM ADMIN.BARI
WHERE AP_DTAUT IS NOT NULL
  AND AP_DTSOLIC IS NOT NULL
GROUP BY AP_NOME_HOSPITAL
ORDER BY
    CASE
        WHEN AVG(AP_DTAUT - AP_DTSOLIC) >= 20 THEN 1
        WHEN AVG(AP_DTAUT - AP_DTSOLIC) >= 5 THEN 2
        ELSE 3
    END, TEMPO_MEDIO_AUTORIZACAO DESC;
