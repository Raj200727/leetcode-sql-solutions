-- Problem: Employees Earning More Than Their Managers
-- Difficulty: Easy
-- Topic: Self Join
-- Platform: LeetCode

# Write your MySQL query statement below
SELECT 
   # employee.id,
   # manager.id,
    employee.name AS Employee
   # employee.salary,
   # manager.salary,
   # employee.managerId
FROM
    Employee employee
JOIN
    Employee manager
ON employee.managerId = manager.id
WHERE employee.salary > manager.salary 



