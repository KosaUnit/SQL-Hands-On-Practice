-- Problem: Percentage of Users Attended a Contest
-- URL: https://leetcode.com/problems/percentage-of-users-attended-a-contest/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
-- Solution:

SELECT contest_id, ROUND(COUNT(DISTINCT user_id)/(
    SELECT COUNT(user_id)
    FROM Users
)*100, 2) as percentage
FROM Register R
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC;