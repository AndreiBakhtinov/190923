SELECT Customers.CustomerName, Employees.LastName as "Employees.LastName", Shippers.ShipperName
FROM Orders
         JOIN Customers ON Orders.CustomerID = Customers.CustomerID
         JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
         JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID;
