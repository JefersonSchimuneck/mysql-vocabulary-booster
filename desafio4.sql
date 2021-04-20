SELECT 
    J.JOB_TITLE AS `Cargo`,
    ROUND(AVG(E.SALARY), 2) AS `Média salarial`,
    CASE
        WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
        WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
        WHEN ROUND(AVG(E.SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
        ELSE 'CEO'
    END AS 'Senioridade'
FROM
    hr.employees AS E
        INNER JOIN
    hr.jobs AS J ON E.JOB_ID = J.JOB_ID
GROUP BY J.JOB_TITLE
ORDER BY `Média salarial` , J.JOB_TITLE;
