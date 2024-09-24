-- Problem: Product Sales Analysis I
-- URL: https://leetcode.com/problems/product-sales-analysis-i/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
-- Solution:

SELECT P.product_name, S.year, S.price
FROM Sales S
LEFT JOIN Product P
ON P.product_id = S.product_id;