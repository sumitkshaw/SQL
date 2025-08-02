-- Select only the 'product_id' column from the Products table
SELECT product_id
FROM Products
-- Filter products where:
-- 1. The product is low-fat (low_fats = 'Y')
-- AND
-- 2. The product is recyclable (recyclable = 'Y')
WHERE low_fats = 'Y'
AND recyclable = 'Y';