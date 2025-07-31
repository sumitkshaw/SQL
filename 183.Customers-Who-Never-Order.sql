SELECT name as customers
FROM customers
WHERE id not in (SELECT customerid FROM orders);

--- SELECT c.name AS Customers
--- FROM Customers C
--- LEFT JOIN Orders o ON c.id = o.customerId
--- WHERE o.id IS NULL