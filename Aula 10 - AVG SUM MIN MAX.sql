SELECT TOP 10  SUM(LineTotal) AS "Soma" -- somou todos os valores da coluna LineTotal
FROM Sales.SalesOrderDetail

SELECT TOP 10 MIN(LineTotal) AS "Menor valor"
FROM Sales.SalesOrderDetail

SELECT TOP 10 MAX(LineTotal) AS "Maior valor"
FROM Sales.SalesOrderDetail

SELECT TOP 10 AVG(LineTotal) AS "Média"
FROM Sales.SalesOrderDetail