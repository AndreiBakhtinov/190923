SELECT Customers.CustomerName, COUNT(*) AS OrdersQuantity FROM Orders
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName
ORDER BY OrdersQuantity DESC LIMIT 3;