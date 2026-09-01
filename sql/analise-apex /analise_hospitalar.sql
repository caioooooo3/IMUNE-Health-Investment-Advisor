-- ============================================================
-- IMUNE - Health Investment Advisor
-- Análise Hospitalar
-- ============================================================

SELECT
    AP_NOME_HOSPITAL AS HOSPITAL,
    COUNT(*) AS TOTAL_ATENDIMENTOS,
    ROUND(AVG(AP_NUIDADE), 1) AS IDADE_MEDIA,
    ROUND(AVG(AP_DTAUT - AP_DTSOLIC), 1) AS TEMPO_MEDIO_AUTORIZACAO,
    SUM(AP_ALTA) AS ALTAS,
    SUM(AP_PERMAN) AS PERMANENCIAS
FROM ADMIN.BARI
GROUP BY AP_NOME_HOSPITAL
ORDER BY TOTAL_ATENDIMENTOS DESC;
