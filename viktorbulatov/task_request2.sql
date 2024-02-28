SELECT
 Customers.CustomerName,
 COUNT(*) as count_orders
FROM Orders
join Customers on Customers.CustomerID = Orders.CustomerID
group by Orders.CustomerID
order by count_orders desc LIMIT 3;
