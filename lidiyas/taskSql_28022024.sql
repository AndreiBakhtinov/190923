--Вывести данные о заказах. проекция
--имя_клиента
--фамилия_менеджера
--название_компании_перевозчика

SELECT OrderID, Customers.CustomerName, Employees.LastName, Shippers.ShipperName FROM Orders
JOIN Customers ON Customers.CustomerID = Orders.CustomerID
JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
JOIN  Shippers ON  Shippers.ShipperID =  Orders.ShipperID
Group BY OrderID