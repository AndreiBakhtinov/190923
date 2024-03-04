SELECT
    COUNT(CustomerID) AS "Кол-во клиентов не из Germany"
FROM
    Customers
WHERE
    Country != "Germany"