I)  Câu l?nh SELECT s? d?ng các hàm th?ng kê v?i các m?nh ?? Group by và Having
SELECT h.SalesOrderID, OrderDate, SUM(OrderQty*UnitPrice) AS SubTotal
FROM Sales.SalesOrderDetail d JOIN Sales.SalesOrderHeader h on d.SalesOrderID = h.SalesOrderID
WHERE MONTH(OrderDate) = 6 AND YEAR(OrderDate) = 2008
GROUP BY h.SalesOrderID, OrderDate
HAVING SUM(OrderQty*UnitPrice) > 7000