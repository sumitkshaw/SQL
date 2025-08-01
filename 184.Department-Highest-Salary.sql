SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM Employee e    
JOIN Department d ON e.departmentId = d.id 
WHERE e.salary = (              --= calculate max salary for each department
    SELECT MAX(salary)
    FROM Employee
    WHERE departmentId = e.departmentId
);