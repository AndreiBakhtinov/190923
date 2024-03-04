--Вывести один товар, который находится на третьем месте среди самых дорогих
SELECT
*
FROM Products
Order by Price desc
limit 1
offset 2