-- Goal: Identify customers who visited without making any transactions
-- Tables: Visits table left-joined with Transactions table
-- Purpose: Measure customer engagement and conversion rates

SELECT 
    v.customer_id,            -- Select the customer identifier
    COUNT(*) AS count_no_trans  -- Count visits without transactions (aliased for clarity)
FROM 
    Visits v                  -- Customer visits tracking table (aliased as 'v')
LEFT JOIN 
    Transactions t            -- Sales transactions table (aliased as 't')
    ON v.visit_id = t.visit_id  -- Join on visit identifier
WHERE 
    t.transaction_id IS NULL  -- Filter for visits with no corresponding transaction
GROUP BY 
    v.customer_id;            -- Aggregate results by customer