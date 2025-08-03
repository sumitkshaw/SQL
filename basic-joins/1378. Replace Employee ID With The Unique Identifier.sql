-- Goal: Retrieve all employees along with their unique IDs (if available)
-- Tables: Main Employees table left-joined with EmployeeUNI lookup table
-- Purpose: Likely to display employee names with corresponding unique identifiers

SELECT 
    euni.unique_id,  -- Select the unique identifier from the EmployeeUNI table
    e.name           -- Select the employee name from the Employees table
FROM 
    Employees e      -- Primary table containing employee information (aliased as 'e')
LEFT JOIN 
    EmployeeUNI euni -- Secondary table containing unique IDs (aliased as 'euni')
    ON e.id = euni.id;  -- Join condition matching employee IDs between tables