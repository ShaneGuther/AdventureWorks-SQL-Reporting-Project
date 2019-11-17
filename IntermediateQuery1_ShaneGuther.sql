USE AdventureWorks2012

SELECT COUNT(Distinct BusinessEntityID) AS 'Number of Sales People', 
CommissionPct AS 'Commission Percentage' ,
ROUND(AVG(Bonus), 2) AS 'Bonus Average'
FROM Sales.SalesPerson
Group By CommissionPct
