-- Goal: Find the customer who placed the most orders
-- Tables used: Only 'Orders' (no JOINs needed)

SELECT customer_number  -- Selects the customer ID (from Orders table)
FROM Orders            -- Data source: Orders table
GROUP BY customer_number  -- Groups orders by customer to count them
ORDER BY COUNT(*) DESC   -- Sorts customers by order count (highest first)
LIMIT 1;                -- Returns ONLY the top customer