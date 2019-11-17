SELECT COUNT(hr.SalesOrderID) AS 'Number of Sales', 
r.[Name] AS 'Reason for Sale',
ROUND(AVG(SubTotal), 2) AS 'Average Order SubTotal',
ROUND(AVG(Freight), 2) AS'Average Freight Cost'
FROM Sales.SalesReason r INNER JOIN Sales.SalesOrderHeaderSalesReason hr 
ON r.SalesReasonID = hr.SalesReasonID 
INNER JOIN Sales.SalesOrderHeader sh ON	sh.SalesOrderID = hr.SalesOrderID
GROUP BY r.[Name]
ORDER BY COUNT(hr.SalesOrderID)

