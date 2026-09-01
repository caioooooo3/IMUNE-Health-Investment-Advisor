-- ============================================================
-- IMUNE - Health Investment Advisor
-- Coluna de descrição Raça/Cor
-- ============================================================

ALTER TABLE BARI
ADD AP_DESC_RACA VARCHAR2(50);

UPDATE BARI
SET AP_DESC_RACA =
    CASE
        WHEN AP_RACACOR = '01' THEN 'Branca'
        WHEN AP_RACACOR = '02' THEN 'Preta'
        WHEN AP_RACACOR = '03' THEN 'Amarela'
        WHEN AP_RACACOR = '04' THEN 'Parda'
        WHEN AP_RACACOR = '05' THEN 'IndIgena'
        ELSE 'Não informado'
    END;

COMMIT;
