SELECT
    count(*) as coun_customers
FROM Customers
WHERE Country not like "Germany";