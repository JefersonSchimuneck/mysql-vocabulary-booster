USE hr;
DELIMITER $$

CREATE PROCEDURE exibir_historico_completo_por_funcionario(IN email VARCHAR(50))
BEGIN
SELECT CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
D.DEPARTMENT_NAME AS `Departamento`,
J.JOB_TITLE AS `Cargo`
FROM job_history AS H
INNER JOIN employees AS E
ON E.EMPLOYEE_ID = H.EMPLOYEE_ID
INNER JOIN departments as D
ON D.DEPARTMENT_ID = H.DEPARTMENT_ID
INNER JOIN jobs AS J
ON J.JOB_ID = H.JOB_ID
WHERE E.EMAIL = email
ORDER BY `Departamento`, `Cargo`;
END $$

DELIMITER ;

CALL exibir_historico_completo_por_funcionario('NKOCHHAR');
