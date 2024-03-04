//В рамках БД "песочница" напишите след/запросы:
//Вывести один товар, который находится на третьем месте среди самых дорогих

SELECT ProductName
FROM Products
ORDER BY Price DESC
LIMIT 1
OFFSET 2;

//Вывести ТОП-3 клиентов по ко-ву заказов

SELECT CustomerID, COUNT(OrderID) as count_orders
FROM Orders
GROUP BY CustomerID
ORDER BY count_orders DESC
LIMIT 3;
