-- Select three columns: name, population, and area from the World table
SELECT name, population, area
FROM World
-- Filter rows where either:
-- 1. The area is 3 million square km or larger
-- OR
-- 2. The population is 25 million or more
WHERE area >= 3000000 OR population >= 25000000;