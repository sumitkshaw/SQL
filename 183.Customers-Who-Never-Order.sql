SELECT name as customers
FROM customers
WHERE id not in (SELECT customerid FROM orders);