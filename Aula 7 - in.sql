SELECT *
FROM person.Person
WHERE BusinessEntityID IN (2,7,13) -- substitui ficar usando o: or = varias vezes 

SELECT *
FROM person.Person
WHERE Title IS NOT NULL