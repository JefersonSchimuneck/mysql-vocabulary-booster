SELECT 
    B.ContactName AS `Nome`,
    B.Country AS `País`,
    COUNT(*) AS `Número de compatriotas`
FROM
    w3schools.customers AS A,
    w3schools.customers AS B
WHERE
    A.Country = B.Country
        AND A.ContactName <> B.ContactName
GROUP BY B.ContactName
HAVING COUNT(*) > 1
ORDER BY B.ContactName;