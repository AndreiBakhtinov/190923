// 1. Вывести среднюю стоимость товара в категории 1 (проекция: название_категории, сред/стоимость)
SELECT
Categories.CategoryName,
AVG(Products.Price) AS avg_price
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE Categories.CategoryID = 1
GROUP BY Categories.CategoryID


// 2. Вывести телефоны поставщиков (suppliers) и перевозчиков (shippers)

// 3. Вывести все заказы, добавив поле is_premium, если его доставит перевозчик 3 (ShipperID)

// 4. Вывести все товары, причем для товаров от поставщиков 1 и 3 и ценой до 250 EUR добавить скидку в 5.5% (проекция: все поля + поле Price_down)
