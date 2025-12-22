-- Problem: Customers Who Never Order
-- Source: LeetCode (Problem 183)
-- Difficulty: Easy
-- Database: MySQL
-- Concepts: LEFT JOIN, NULL filtering

/*
Problem:
Find all customers who never placed an order.

Approach:
- LEFT JOIN Customers with Orders
- Filter rows where there is no matching order
*/

SELECT
    c.name AS Customers
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.id = o.customerId
WHERE o.customerId IS NULL;
