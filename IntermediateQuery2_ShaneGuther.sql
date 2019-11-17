USE AdventureWorks2012

SELECT DISTINCT SalesPersonID, Round(SalesYTD, 2) AS 'Sales Year to Date'
FROM Sales.SalesPerson, Sales.Store
WHERE SalesYTD > (SELECT AVG(SalesYTD) FROM Sales.SalesPerson)
AND Sales.SalesPerson.BusinessEntityID = Sales.Store.SalesPersonID
ORDER BY ROUND(SalesYTD, 2)




