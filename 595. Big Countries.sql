-- Goal: Identify countries that are large by area or population
-- Tables: Querying the World table for geographic/demographic data
-- Criteria: Countries meeting at least one of two "big country" conditions

SELECT name,         -- Country name
       population,  -- Population count
       area         -- Land area in square kilometers
FROM World          -- From the World table
WHERE area >= 3000000            -- Condition 1: Area ≥ 3 million sq km (like India)
   OR population >= 25000000;    -- Condition 2: Population ≥ 25 million (like Australia)