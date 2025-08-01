-- Goal: Find employees who earn more than their managers
-- Tables: Self-join on Employee table to compare salaries

SELECT e1.name AS Employee  -- Select employee name (the subordinate)
FROM Employee e1            -- Represents employees (subordinates)
JOIN Employee e2            -- Represents managers
    ON e1.managerId = e2.id  -- Correct join: employee's manager = manager's ID
WHERE e1.salary > e2.salary; -- Filter for employees earning more than managers