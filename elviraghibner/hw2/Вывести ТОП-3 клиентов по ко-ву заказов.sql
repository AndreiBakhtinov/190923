-- Вывести ТОП-3 клиентов по ко-ву заказов
-- Проекция:
--      имя_клиента
--      ко-во_заказов

SELECT
    CustomerName AS Customer_Name,
    COUNT(OrderID) AS Order_Count
FROM
    Customers
JOIN
    Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY
    Customers.CustomerID, CustomerName
ORDER BY
    COUNT(OrderID) DESC
LIMIT 3;

