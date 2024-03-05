--Вывести среднюю стоимость товара в категории 1 
--(проекция: название_категории, сред/стоимость)

SELECT
Categories.CategoryName,
AVG (Price) as Average_price
FROM Products
join Categories on Products.CategoryID = Categories.CategoryID
Where Products.CategoryID = 1

--Вывести телефоны поставщиков (suppliers) и перевозчиков (shippers)

SELECT
Phone
FROM Suppliers
UNION ALL
SELECT
Phone
FROM Shippers

--Вывести все заказы, добавив поле is_premium, если его доставит перевозчик 3 (ShipperID)

SELECT
 *,
CASE
	When ShipperID = 3 Then TRUE
    Else False
    End AS is_premium
FROM Orders

--Вывести все товары, для товаров от поставщиков 1 и 3 и ценой до 250 EUR добавить скидку в 5.5% 
--(проекция: все поля + поле Price_down)

SELECT
 *,
CASE
When
	SupplierID in (1,3)
	and Price < 250
	THEN Price * .945
    END AS Price_down
FROM Products