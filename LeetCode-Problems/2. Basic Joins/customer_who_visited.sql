-- Problem: Customer Who Visited but Did Not Make Any Transactions
-- URL: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
-- Solution:

SELECT V.customer_id, COUNT(*) as count_no_trans
FROM Visits V
LEFT JOIN Transactions T
ON V.visit_id = T.visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id;