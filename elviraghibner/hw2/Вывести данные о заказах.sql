-- Вывести данные о заказах
-- проекция: 
--      имя_клиента
--      фамилия_менеджера
--      название_компании_перевозчика
SELECT
    Customers.CustomerName AS customer_name,
    Employees.LastName AS manager_last_name,
    Shippers.ShipperName AS shipper_name
FROM
    Orders
JOIN
    Customers ON Orders.CustomerID = Customers.CustomerID
JOIN
    Employees ON Orders.EmployeeID = Employees.EmployeeID
JOIN
    Shippers ON Orders.ShipperID = Shippers.ShipperID;
