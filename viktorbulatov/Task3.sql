SELECT
    count(*) as count_Customers
FROM Customers
WHERE Country not like "Germany";