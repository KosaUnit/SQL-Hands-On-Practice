-- Problem: Rising Temperature
-- URL: https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
-- Solution:

SELECT W2.id
FROM Weather W1
JOIN Weather W2
ON W1.recordDate = DATE_SUB(W2.recordDate, INTERVAL 1 DAY)
WHERE W2.temperature > W1.temperature;