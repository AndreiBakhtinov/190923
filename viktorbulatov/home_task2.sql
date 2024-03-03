--Вывести ТОП-3 клиентов по ко-ву заказов
SELECT
CustomerName,
count(Orders.OrderID) as count_orders
FROM Customers
join Orders on Orders.CustomerID = Customers.CustomerID
group by CustomerName
order by count_orders desc
limit 3