-- Вывести все заказы, которые повезет Speedy Express
SELECT * 
FROM Orders

JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID

WHERE 
    Shippers.ShipperName = 'Speedy Express'
