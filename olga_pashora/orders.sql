SELECT
 Customers.CustomerName,
 Employees.LastName,
 Shippers.ShipperName
FROM Orders
join Customers on Customers.CustomerID = Orders.CustomerID
join Employees on Employees.EmployeeID = Orders.EmployeeID
join Shippers on Shippers.ShipperID = Orders.ShipperID