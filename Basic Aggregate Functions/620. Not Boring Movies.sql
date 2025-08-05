-- Goal: Find interesting movies with odd-numbered IDs, sorted by highest rating
-- Tables: Cinema table containing movie information
-- Purpose: Curate a list of quality films for recommendations or programming

SELECT 
    id,            -- Cinema seat or screening identifier
    movie,         -- Movie title
    description,   -- Movie description
    rating         -- Movie rating (used for sorting)
FROM 
    Cinema         -- Table containing movie screening information
WHERE 
    id % 2 = 1     -- Filter for odd-numbered IDs (modulo operation)
    AND description != 'boring'  -- Exclude movies marked as boring
ORDER BY 
    rating DESC;   -- Sort from highest to lowest rating