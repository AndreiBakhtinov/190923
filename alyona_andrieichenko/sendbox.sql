SELECT Customers.CustomerName, Employees.LastName AS EmployeeLastName, Shippers.ShipperName FROM Orders
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
JOIN Shippers ON Shippers.ShipperID = Orders.ShipperID;