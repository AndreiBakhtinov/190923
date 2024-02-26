-- https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_select_all
-- В рамках БД "песочница" вывести имена клиентов, которые начинаются букву A
SELECT 
    CustomerName
FROM
    Customers
WHERE 
    CustomerName LIKE "A%"
