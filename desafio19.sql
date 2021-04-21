USE hr;
DELIMITER $$

CREATE FUNCTION exibir_quantidade_pessoas_contratadas_por_mes_e_ano(mes INT, ano INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_contratados INT;
SELECT 
    COUNT(*)
FROM
    employees
WHERE
    MONTH(HIRE_DATE) = mes
        AND YEAR(HIRE_DATE) = ano INTO quantidade_contratados;
RETURN quantidade_contratados;
END $$

DELIMITER ;

SELECT exibir_quantidade_pessoas_contratadas_por_mes_e_ano(6, 1987);
