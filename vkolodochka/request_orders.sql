SELECT
	Employees.LastName AS managerLastName,
    Customers.CustomerName as userName,
	Shippers.ShipperName as shipperName,
	COUNT(*) AS total_orders
FROM Orders

JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
JOIN Customers on Customers.CustomerID = Orders.CustomerID
join Shippers on Shippers.ShipperID = Orders.ShipperID

GROUP BY Employees.EmployeeID

ORDER BY total_orders DESC