-- Problem: Employee Bonus
-- URL: https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
-- Solution:

SELECT E.name, B.bonus
FROM Employee E
LEFT JOIN Bonus B
USING (empId)
WHERE B.bonus < 1000 OR B.bonus IS NULL;