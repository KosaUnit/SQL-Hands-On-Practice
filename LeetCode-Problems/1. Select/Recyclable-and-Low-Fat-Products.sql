-- Problem: Recyclable and Low Fat Products
-- URL: https://leetcode.com/problems/recyclable-and-low-fat-products
-- Difficulty: Easy
-- Solution:

SELECT P.product_id
FROM Products P
WHERE P.low_fats = 'Y' AND P.recyclable = 'Y';