// Вывести один товар, который находится на третьем месте среди самых дорогих

SELECT * FROM Products
ORDER BY Price DESC
LIMIT 1 OFFSET 2