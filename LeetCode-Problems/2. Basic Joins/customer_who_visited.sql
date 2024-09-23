-- Problem: Article Views I
-- URL: https://leetcode.com/problems/article-views-i/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
-- Solution:

SELECT DISTINCT V.author_id AS id
FROM Views V 
WHERE V.author_id = V.viewer_id
ORDER BY V.author_id ASC;