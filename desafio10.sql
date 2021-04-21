SELECT 
    P.ProductName AS `Produto`,
    MIN(O.Quantity) AS `Mínima`,
    MAX(O.Quantity) AS `Máxima`,
    ROUND(AVG(O.Quantity), 2) AS `Média`
FROM
    w3schools.order_details AS O
        INNER JOIN
    w3schools.products AS P ON P.ProductID = O.ProductID
GROUP BY P.ProductName
HAVING ROUND(AVG(O.Quantity), 2) > 20.00
ORDER BY `Média` , `Produto`;
