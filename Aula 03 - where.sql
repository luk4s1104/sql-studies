SELECT *
FROM PERSON.PERSON
WHERE LastName = 'Miller' and FirstName = 'Anna'

SELECT * 
FROM production.Product
WHERE color = 'blue' or color = 'black'

SELECT * 
FROM production.Product
WHERE color <> 'red'

SELECT * 
FROM production.Product
WHERE ListPrice > 1500 and ListPrice < 5000

--Ex 1 - produtos com o peso entre 500 e 700 kg

SELECT Name
FROM production.Product
WHERE Weight > 500 and Weight < 700

-- Ex 2 - achar pessoas casadas e assalariadas

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'm' and SalariedFlag = 'true'

-- Ex 3 Achar o email do peter krebs

SELECT *
FROM person.Person
WHERE FirstName = 'Peter' and LastName = 'Krebs' -- BusinessEntityID = 26

SELECT *
FROM person.EmailAddress
WHERE BusinessEntityID = 26
