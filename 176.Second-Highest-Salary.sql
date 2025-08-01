-- SELECT(
--     SELECT DISTINCT salary
--     FROM Employee
--     ORDER BY salary DESC
--     LIMIT 1 OFFSET 1 
-- ) AS SecondHighestSalary




-- Goal: Find the second-highest salary (returns NULL if none exists)
-- Method: Nested aggregation with edge-case protection

SELECT MAX(salary) AS SecondHighestSalary  -- MAX handles cases with duplicates
FROM Employee
WHERE salary < (                         -- Filter for salaries less than max
    SELECT MAX(salary) FROM Employee      -- Subquery finds absolute max salary
);