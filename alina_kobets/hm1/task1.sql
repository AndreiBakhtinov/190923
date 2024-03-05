------Вывести максимальную стоимость для каждой категории товаров проекция: `название_категории`, `макс_цена_товара`

SELECT
 Categories.CategoryName,
 MAX(Products.Price) AS max_price
FROM Categories
JOIN Products ON Products.CategoryID = Categories.CategoryID
GROUP BY Categories.CategoryID
ORDER BY max_price DESC