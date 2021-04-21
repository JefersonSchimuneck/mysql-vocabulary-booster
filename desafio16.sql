USE hr;
DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(50))
RETURNS INT READS SQL DATA
BEGIN
DECLARE quantidade_de_empregos INT;
SELECT 
COUNT(*)
FROM
hr.job_history AS J
INNER JOIN
employees AS E
WHERE
E.EMPLOYEE_ID = J.EMPLOYEE_ID
AND E.EMAIL = email INTO quantidade_de_empregos;
RETURN quantidade_de_empregos;
END $$

DELIMITER ;

SELECT BUSCAR_QUANTIDADE_DE_EMPREGOS_POR_FUNCIONARIO('NKOCHHAR');
