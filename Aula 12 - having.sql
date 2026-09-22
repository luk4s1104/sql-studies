SELECT FirstName, COUNT(FirstName) AS "Quantidade"
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10 

-- EX 1 - Quais produtos que no total de vendas estao entre 162k e 500k

SELECT ProductID, SUM(LineTotal) AS "Total"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) between 162000 and 500000

-- Ex 2 - Quais nomes no sistema tem uma ocorrencia maior que 10 vezes, porem somente onde o titulo é 'Mr.'

SELECT FirstName, COUNT(FirstName) AS "Quantidade"
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10

-- Ex 3 - Identificars as provincias com o maior numero de cadastro no sistema, e encontrar aquelas que estao registradas mais de 1000 vezes 

SELECT StateProvinceID, COUNT(StateProvinceID) AS "n° de registros"
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000

-- Ex 4 - Saber os produtos que nao estao trazendo em media 1 milhao de vendas no toatl 

SELECT ProductID, AVG(LineTotal) AS "Média de Vendas"
FROM Sales.SalesOrderDetail
GROUP BY  ProductID
HAVING AVG(LineTotal) < 1000000
