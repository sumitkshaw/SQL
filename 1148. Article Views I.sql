-- Select unique author IDs and rename the column as 'id'
SELECT DISTINCT author_id AS id
FROM Views
-- Filter rows where the author is also the viewer
-- (meaning they viewed their own article)
WHERE author_id = viewer_id
-- Sort the results by id in ascending order (default)
ORDER BY id;