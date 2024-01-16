I)  C�u l?nh SELECT s? d?ng c�c h�m th?ng k� v?i c�c m?nh ?? Group by v� Having
SELECT h.SalesOrderID, OrderDate, SUM(OrderQty*UnitPrice) AS SubTotal
FROM Sales.SalesOrderDetail d JOIN Sales.SalesOrderHeader h on d.SalesOrderID = h.SalesOrderID
WHERE MONTH(OrderDate) = 6 AND YEAR(OrderDate) = 2008
GROUP BY h.SalesOrderID, OrderDate
HAVING SUM(OrderQty*UnitPrice) > 7000