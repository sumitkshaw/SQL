-- Goal: Identify authors who viewed their own articles
-- Tables: Querying the Views table to find author-viewer relationships
-- Business Case: Likely tracking author engagement or self-review patterns

SELECT DISTINCT author_id AS id  -- Select unique author IDs, renamed as 'id' for clarity
FROM Views                      -- From the Views tracking table
WHERE author_id = viewer_id     -- Critical join condition: author viewed their own content
ORDER BY id;                    -- Sort results numerically by author ID (ascending default)