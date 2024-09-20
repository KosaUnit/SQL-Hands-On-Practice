-- Problem: Invalid Tweets
-- URL: https://leetcode.com/problems/invalid-tweets/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
-- Solution:

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content)>15;