-- Ex 1 - Quantos produtos temos cadastrados que custam mais que 1500 dolares ?

SELECT COUNT(ListPrice)
FROM Production.Product
WHERE ListPrice > 1500

-- Ex 2 - Quantas pessoas temos cadastradas com o sobrenome iniciando com a letra p ?

SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'p%'

-- Ex 3 - Em quantas cidades unicas estao cadastrados nossos clientes ?

SELECT COUNT(DISTINCT (City))
FROM Person.Address

-- Ex 4 - Quais sao as cidades unicas que temos cadastrados em nosso sistema ?

SELECT DISTINCT City
FROM Person.Address

-- Ex 5 - Quantos produtos vermelhos tem preco entre 500 e 1000 dolares ?

SELECT COUNT(*)
FROM Production.Product 
WHERE Color = 'Red' AND ListPrice BETWEEN 500 AND 1000

-- Ex 6 - Quantos produtos tem a palavra road no nome?

SELECT COUNT(*)
FROM Production.Product
WHERE Name LIKE '%road%'