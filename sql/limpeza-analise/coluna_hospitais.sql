-- ============================================================
-- IMUNE - Health Investment Advisor
-- Coluna de descrição Raça/Cor
-- ============================================================

ALTER TABLE BARI
ADD AP_NOME_HOSPITAL VARCHAR2(4000);

UPDATE BARI
SET AP_NOME_HOSPITAL =
    CASE
        WHEN AP_CNPJCPF = '45186053000187' THEN 'Santa Casa São José dos Campos'
        WHEN AP_CNPJCPF = '50753755000135' THEN 'Hospital Amaral Carvalho'
        WHEN AP_CNPJCPF = '09161265000146' THEN 'Instituição FAMAR'
        WHEN AP_CNPJCPF = '62779145000190' THEN 'Irmandade da Santa Casa de Misericordia'
        WHEN AP_CNPJCPF = '60003761000129' THEN 'Hospital de Base São Jose do Rio Preto'
        WHEN AP_CNPJCPF = '46068425000133' THEN 'Universidade Estadual de Campinas'
        WHEN AP_CNPJCPF = '55344337000108' THEN 'Hospital Dr Aristoteles Oliveira Martins'
        WHEN AP_CNPJCPF = '54384631000261' THEN 'Hospital AFOCAPI'
        WHEN AP_CNPJCPF = '56577059000100' THEN 'Fundação Faculdade de Medicina'
        WHEN AP_CNPJCPF = '60742616000160' THEN 'Hospital Santa Marcelina'

    END;

COMMIT;

