SELECT 
    CONCAT(E.FIRST_NAME, ' ', E.LAST_NAME) AS `Nome completo`,
    DATE_FORMAT(J.START_DATE, '%d/%m/%Y') AS `Data de início`,
    DATE_FORMAT(J.END_DATE, '%d/%m/%Y') AS `Data de rescisão`,
    ROUND(DATEDIFF(J.END_DATE, J.START_DATE) / 365, 2) AS `Anos trabalhados`
FROM
    job_history AS J
        INNER JOIN
    employees AS E ON E.EMPLOYEE_ID = J.EMPLOYEE_ID
ORDER BY `Nome Completo`, `Anos trabalhados`;
