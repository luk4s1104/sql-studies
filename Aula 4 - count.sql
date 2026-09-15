SELECT COUNT(*)
FROM person.person

SELECT COUNT(Title)
FROM person.person

SELECT COUNT(DISTINCT Title)
FROM person.person

-- Ex 1 - Saber quantos produtos tem na tabela de produtos

SELECT COUNT(Name)
FROM Production.Product

-- Ex2 - Saber quantos tamanhos de produtos tem cadastrado na tabela

SELECT COUNT(Size)
FROM Production.Product

-- Ex 3 - Saber quantos tamanhos diferentes de produtos tem cadastrado na tabela 

SELECT COUNT( DISTINCT Size)
FROM Production.Product