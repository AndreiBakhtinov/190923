-- В рамках БД "песочница" напишите след/запросы:
-- Вывести один товар, который находится на третьем месте среди самых дорогих
SELECT * FROM Products
ORDER BY Price DESC
LIMIT 1 OFFSET 2;

-- Вывести ТОП-3 клиентов по ко-ву заказов
SELECT Customers.CustomerName, COUNT(*) AS OrdersQuantity FROM Orders
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerName
ORDER BY OrdersQuantity DESC LIMIT 3;

-- Также оформить PR в git-репозитории группы по каждой задаче выше

