-- Goal: Count the number of unique subjects each teacher teaches
-- Table: Teacher table containing teacher-subject assignments
-- Purpose: Understand teacher workload or subject specialization

SELECT 
    teacher_id,               -- Select the teacher identifier
    COUNT(DISTINCT subject_id) AS cnt  -- Count unique subjects per teacher
FROM 
    Teacher                  -- Table containing teacher-subject assignments
GROUP BY 
    teacher_id;              -- Group results by teacher to aggregate counts