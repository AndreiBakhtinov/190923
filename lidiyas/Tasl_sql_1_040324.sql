--Вывести общее ко-во клиентов не из Germany
SELECT COUNT(*)
FROM Customers
WHERE Country != 'Germany';