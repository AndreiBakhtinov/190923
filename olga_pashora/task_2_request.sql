SELECT
 Customers.CustomerName,
 count(*) as count_orders
FROM Orders
JOIN Customers on Customers.CustomerID = Orders.CustomerID
GROUP BY Orders.CustomerID
ORDER BY count_orders DESC
LIMIT 3

--Вывести ТОП-3 клиентов по ко-ву заказов
--    имя_клиента
--    ко-во_заказов