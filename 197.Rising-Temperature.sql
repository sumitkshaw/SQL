-- Goal: Find dates where temperature was higher than the previous day
-- Tables: Self-join on Weather table to compare consecutive days

SELECT w1.id  -- Select ID of the warmer day
FROM Weather w1  -- Primary table (current day)
JOIN Weather w2  -- Self-join to compare against previous day
    ON DATEDIFF(w1.recordDate, w2.recordDate) = 1  -- Ensure exact 1-day gap
WHERE w1.temperature > w2.temperature;  -- Filter for warmer days