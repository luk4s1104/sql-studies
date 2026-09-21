SELECT TOP 10 *
FROM Production.Product
ORDER BY ProductID desc

SELECT FirstName, LastName
FROM person.Person
ORDER BY FirstName asc, LastName desc

-- Ex 1 - Obter o productID dos 10 produtos mais caros cadastrados no sistema, do mais caro pro mais barato 

SELECT  TOP 10 ProductID, ListPrice
FROM Production.Product
ORDER BY ListPrice desc

-- Ex 2 - Obter o nome e o numero do produto dos produtos que tem productID entre 1 e 4 

SELECT TOP 4 ProductId, Name, ProductNumber
FROM Production.Product
ORDER BY ProductID asc