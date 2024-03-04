//Вывести ТОП-3 клиентов по ко-ву заказов
SELECT Customers.CustomerName,COUNT(*) AS max_orders
FROM Orders
Join Customers ON Orders.CustomerID=Customers.CustomerID
GROUP BY Orders.CustomerID
ORDER BY max_orders DESC
Limit 3