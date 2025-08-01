-- Goal: Delete duplicate emails, keeping only the record with the smallest id
-- Method: Self-join to identify duplicates for deletion

DELETE p1  -- Delete rows from p1 (the higher-id duplicates)
FROM Person p1, Person p2  -- Self-join the Person table
WHERE p1.email = p2.email  -- Match rows with the same email
  AND p1.id > p2.id;       -- Only keep the row with the smaller id