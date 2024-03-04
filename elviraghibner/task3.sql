
-- Вывести общее ко-во клиентов не из Germany
SELECT COUNT(*) AS total_customers_not_in_germany
FROM Customers
WHERE Country <> 'Germany';

