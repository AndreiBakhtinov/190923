-- Вывести ТОП-3 клиентов по ко-ву заказов
SELECT Customers.CustomerName, COUNT(*) AS OrdersQuantity FROM Orders
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName
ORDER BY OrdersQuantity DESC LIMIT 3;
