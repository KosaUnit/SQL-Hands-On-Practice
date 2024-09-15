# TODO List

# Write your MySQL query statement below

#Notes:
1. Find avg time for each machine to complete a process 

#TODO: 
1. Subtract STOP from START for machines with the same process id, use as a condition machine id as well 

SELECT A1.machine_id, AVG(A1. A2. AS )
FROM A1
INNER JOIN Activity A2
WHERE 
GROUP BY A1.machine_id