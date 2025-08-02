-- Select only the 'name' column from the Customer table
SELECT name 
FROM Customer
-- Filter customers where:
-- 1. Their referee_id is NOT equal to 2
--    OR
-- 2. Their referee_id is NULL (meaning they weren't referred by anyone)
WHERE referee_id != 2 OR referee_id IS NULL;