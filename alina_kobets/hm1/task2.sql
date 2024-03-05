------Вывести ко-во товаров для категорий `5` и `6` (отдельно для каждой) проекция: `название_категории`, `ко-во_товаров`

SELECT
 Categories.CategoryName,
 COUNT(*) AS countProducts
FROM Products
JOIN Categories ON Categories.CategoryID = Products.CategoryID
WHERE
	Products.CategoryID IN (5, 6)
GROUP BY Products.CategoryID