-- Problem: The Number of Employees Which Report to Each Employee
-- URL: https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
-- Solution:

-- manager an employee who has at least 1 other employee reporting to them

-- report the ids and the names of all managers
-- the number of employees who report directly to them
-- average age of the reports rounded to the nearest integer

-- 1. Find ids and names of All Managers 

SELECT DISTINCT E1.employee_id, E1.name
FROM Employees E1
JOIN Employees E2
ON E1.employee_id = E2.reports_to

-- 2. Find number of people who report to managers

SELECT DISTINCT E1.employee_id, E1.name, COUNT(E2.employee_id) AS reports_count
FROM Employees E1
JOIN Employees E2
ON E1.employee_id = E2.reports_to
GROUP BY E1.employee_id

-- 3. Find number average age of the reports for each manager rounded to the nearest integer Return the result table ordered by employee_id.

SELECT DISTINCT E1.employee_id, E1.name, COUNT(E2.employee_id) AS reports_count, ROUND(AVG(E2.age)) as average_age
FROM Employees E1
JOIN Employees E2
ON E1.employee_id = E2.reports_to
GROUP BY E1.employee_id
ORDER BY employee_id;


