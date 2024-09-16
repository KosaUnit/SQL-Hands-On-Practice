-- Problem: Find Customer Referee
-- URL: https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
-- Solution:

SELECT C.name
FROM Customer C
WHERE C.referee_id <> 2 OR C.referee_id IS NULL;