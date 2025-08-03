-- Goal: Retrieve customer names who were not referred by referee ID 2
-- Tables: Querying the Customer table to find specific referral patterns

SELECT name                    -- Select only the customer name column
FROM Customer                 -- From the Customer table
WHERE referee_id != 2         -- Filter condition 1: referee is not ID 2
   OR referee_id IS NULL;     -- Filter condition 2: no referee exists (NULL)