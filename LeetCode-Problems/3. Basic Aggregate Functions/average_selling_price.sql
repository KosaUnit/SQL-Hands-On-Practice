-- Problem: Average Selling Price
-- URL: https://leetcode.com/problems/average-selling-price/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
-- Solution:

SELECT P.product_id, IFNULL(
    ROUND(SUM(P.price*US.units)/SUM(US.units)
    ,2), 0) AS average_price
FROM Prices P
LEFT JOIN UnitsSold US
ON US.product_id = P.product_id AND (US.purchase_date BETWEEN P.start_date AND P.end_date)
GROUP BY P.product_id;