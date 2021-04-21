SELECT 
    CONCAT(E.FirstName, ' ', E.LastName) AS `Nome completo`,
    COUNT(*) AS `Total de Pedidos`
FROM
    w3schools.orders AS O
        INNER JOIN
    w3schools.employees AS E ON O.EmployeeID = E.EmployeeID
GROUP BY `Nome Completo`
ORDER BY `Total de Pedidos`;
