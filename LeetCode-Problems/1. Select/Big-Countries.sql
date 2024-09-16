-- Problem: Big Countries
-- URL: https://leetcode.com/problems/big-countries/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
-- Solution:

SELECT W.name, W.population, W.area
FROM World W
WHERE W.area >= 3000000 OR W.population >= 25000000;