SELECT Customers.CustomerName, count(*) as count
FROM Orders
    JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Customers.CustomerID
ORDER BY count DESC
    LIMIT 3;
