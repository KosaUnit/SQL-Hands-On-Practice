-- Problem: Not Boring Movies
-- URL: https://leetcode.com/problems/not-boring-movies/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
-- Solution:

SELECT *
FROM Cinema 
WHERE description <> "boring" AND id%2 <> 0
ORDER BY rating DESC;