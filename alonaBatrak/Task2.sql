
SELECT * FROM Orders
join Shippers on Shippers.ShipperID = Orders.ShipperID
Where Shippers.ShipperName = "Speedy Express"
Group By Orders.OrderID