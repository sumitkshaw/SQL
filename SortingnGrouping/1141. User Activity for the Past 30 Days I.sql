-- Goal: Count daily active users during a specific 30-day period
-- Table: Activity table containing user activity logs
-- Purpose: Measure user engagement metrics for a month

SELECT 
    activity_date AS day,          -- Rename date column for clarity
    COUNT(DISTINCT user_id) AS active_users  -- Count unique users per day
FROM 
    Activity                       -- User activity log table
WHERE 
    activity_date BETWEEN '2019-06-28' AND '2019-07-27'  -- 30-day period filter
GROUP BY 
    activity_date;                 -- Group by date to get daily counts