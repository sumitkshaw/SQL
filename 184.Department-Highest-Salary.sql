-- Goal: Find employees who earn the highest salary in each department
-- Tables: Employee (e) joined to Department (d)

SELECT 
    d.name AS Department,
    e.name AS Employee, 
    e.salary AS Salary
FROM Employee e    
JOIN Department d ON e.departmentId = d.id  -- Connect employee to their department
WHERE e.salary = (  -- Subquery: Filters only max-salary employees per department
    SELECT MAX(salary)
    FROM Employee
    WHERE departmentId = e.departmentId  -- Correlated subquery: Runs per department
);