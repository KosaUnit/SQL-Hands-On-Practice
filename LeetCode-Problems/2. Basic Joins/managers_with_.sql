-- Problem: Managers with at Least 5 Direct Reports
-- URL: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
-- Solution:

SELECT name
FROM (
    SELECT E1.id, E1.name, COUNT(*)
    FROM Employee E1
    INNER JOIN Employee E2
    ON E1.id = E2.managerId
    GROUP BY E1.id, E1.name
    HAVING COUNT(*) >= 5
) E;