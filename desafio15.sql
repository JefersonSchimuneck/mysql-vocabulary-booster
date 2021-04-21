USE hr;
DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN job VARCHAR(50))
	BEGIN
		SELECT ROUND(AVG(E.SALARY), 2) AS `Média salarial` FROM employees AS E
        INNER JOIN jobs AS J
        ON J.JOB_ID = E.JOB_ID
        WHERE J.JOB_TITLE = job;
	END $$
    
DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
