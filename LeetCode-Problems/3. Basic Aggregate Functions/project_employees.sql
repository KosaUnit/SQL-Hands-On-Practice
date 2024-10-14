-- Problem: Project Employees I
-- URL: https://leetcode.com/problems/project-employees-i/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
-- Solution:

SELECT P.project_id, ROUND(AVG(E.experience_years), 2) as average_years
FROM Project P
LEFT JOIN Employee E
ON P.employee_id = E.employee_id
GROUP BY P.project_id;