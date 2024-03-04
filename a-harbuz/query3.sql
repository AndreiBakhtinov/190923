//В рамках БД "песочница" напишите след/запросы:
//Вывести среднюю стоимость товара в категории 1 (проекция: название_категории, сред/стоимость)

SELECT Categories.CategoryName, AVG(Products.Price) as 'avg_price', Products.CategoryID
FROM Products
         JOIN Categories ON Categories.CategoryID = Products.CategoryID
HAVING Products.CategoryID = 1;

//Вывести телефоны поставщиков (suppliers) и перевозчиков (shippers)

SELECT Suppliers.Phone FROM Suppliers
UNION
SELECT Shippers.Phone FROM Shippers;

//Вывести все заказы, добавив поле is_premium, если его доставит перевозчик 3 (ShipperID)
SELECT *,
       case
           when ShipperID = 3 then true
           else false
           end as is_premium
FROM Orders

//Вывести все товары, причем для товаров от поставщиков 1 и 3 и ценой до 250 EUR
//добавить скидку в 5.5% (проекция: все поля + поле Price_down)
SELECT *,
       case
           when SupplierID IN (1,3) AND Price<250 then Price*0.945
           else Price
           end as Price_down
FROM Products;


