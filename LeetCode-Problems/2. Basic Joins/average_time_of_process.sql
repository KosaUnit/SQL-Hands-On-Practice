-- Problem: Average Time of Process per Machine
-- URL: https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50
-- Difficulty: Easy
-- Solution:

SELECT A1.machine_id, ROUND(AVG(A2.timestamp-A1.timestamp),3) as processing_time
FROM Activity A1
INNER JOIN Activity A2
ON (A1.machine_id = A2.machine_id AND A1.process_id = A2.process_id 
    AND A1.activity_type = 'start' AND A2.activity_type = 'end')
GROUP BY A1.machine_id;