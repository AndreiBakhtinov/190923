// Вывести ТОП-3 клиентов по ко-ву заказов

SELECT Customers.CustomerName,
Count(*) AS total_count_of_orders
From Orders
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
GROUP BY Orders.CustomerID
ORDER BY total_count_of_orders DESC
LIMIT 3