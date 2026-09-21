 SELECT SpecialOfferID, SUM(UnitPrice) AS "Soma"
 FROM Sales.SalesOrderDetail
 GROUP BY SpecialOfferID 
 ORDER BY SpecialOfferID asc

 -- Ex 1 - Quantas unidades foram vendidas de cada produto ate hoje ?

 SELECT ProductID, COUNT(ProductID) AS "Contagem"
 FROM Sales.SalesOrderDetail
 GROUP BY ProductID
 ORDER BY contagem desc
  
 -- Ex 2 - Quantos nomes temos cadastrados de cada nome no nosso banco de dados

  SELECT FirstName, COUNT(FirstName) AS "Quantidade"
  FROM Person.Person
  GROUP BY FirstName
  ORDER BY Quantidade desc

 -- Ex 3 - Saber a media de preço dos produtos que são pratas

  SELECT Color, AVG(ListPrice) AS "Preço"
  FROM Production.Product
  WHERE Color = 'Silver'
  GROUP BY Color
 
 -- Ex 4 - Quantas pessoas tem o mesmo middlename agrupadas por middlename ?

 SELECT MiddleName, COUNT(MiddleName) AS "Quantidade"
 FROM Person.Person
 GROUP BY MiddleName
 ORDER BY Quantidade desc

 -- Ex 5 - Saber em media qual a quantidade que cada produto é vendido na loja

 SELECT ProductID, AVG(OrderQty) AS "Média"
 FROM Sales.SalesOrderDetail
 GROUP BY ProductID
 ORDER BY ProductID

 -- EX 6 - Quais foram as 10 vendas que no total tiveram os maiores valor de venda por produto, do maior para o menor

 SELECT TOP 10 ProductID, SUM(LineTotal) 
 FROM Sales.SalesOrderDetail
 GROUP BY ProductID
 ORDER BY SUM(LineTotal) DESC

 -- EX 7 - Quantos produtos e qual a quantidade media de produtos temos cadastrados nas nossas ordem de servico, agrupadas pro productID 

SELECT ProductID, COUNT(ProductID) AS "Contagem",
AVG(orderqty) AS "Média"
FROM production.WorkOrder
GROUP BY ProductID