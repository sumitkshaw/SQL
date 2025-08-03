-- Goal: Retrieve product sales information with product names
-- Tables: Join between Product master table and Sales transaction table
-- Purpose: Combine product details with their sales records

SELECT 
    p.product_name,  -- Select the product name from Product table
    s.year,         -- Select the sale year from Sales table
    s.price         -- Select the sale price from Sales table
FROM 
    Product p       -- Product reference table (aliased as 'p')
JOIN 
    Sales s         -- Sales transaction table (aliased as 's')
    ON s.product_id = p.product_id;  -- Join on product_id foreign key

--- using left join would return every row of the left join table
--- with a null null entry if on condition isnt fulfilled