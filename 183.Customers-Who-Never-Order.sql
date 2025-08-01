-- Goal: Find customers who never placed any orders
-- Tables: Customers (left table), Orders (right table)

SELECT name AS customers  -- Return customer names with alias
FROM customers
WHERE id NOT IN (        -- Filter condition: exclude customers with orders
    SELECT customerid    -- Subquery: Get ALL customers who placed orders
    FROM orders          -- (Returns a list of customer IDs that exist in orders)
);

--- SELECT c.name AS Customers
--- FROM Customers C
--- LEFT JOIN Orders o ON c.id = o.customerId
--- WHERE o.id IS NULL