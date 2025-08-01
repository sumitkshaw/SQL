-- Goal: Retrieve all persons with their address info (if available)
-- Tables: Person (left table), Address (right table)
-- Join type: LEFT JOIN to include persons without addresses

SELECT 
    p.firstname,  -- Always from Person table
    p.lastname,   -- Always from Person table
    a.city,       -- From Address (NULL if no address exists)
    a.state       -- From Address (NULL if no address exists)
FROM Person p
LEFT JOIN Address a ON p.personId = a.personId  -- Preserve all persons