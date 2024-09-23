-- Problem: Replace Employee ID With The Unique Identifier
-- URL: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
-- Solution:

SELECT E2.unique_id, E1.name
FROM Employees E1
LEFT JOIN EmployeeUNI E2
ON E1.id = E2.id