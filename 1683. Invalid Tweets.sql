-- Goal: Find tweets that exceed the character limit of 15
-- Tables: Querying the Tweets table to check content length

SELECT tweet_id               -- Select only the tweet identifier column
FROM Tweets                   -- From the Tweets table
WHERE LENGTH(content) > 15;   -- Filter for tweets where content length exceeds 15 characters