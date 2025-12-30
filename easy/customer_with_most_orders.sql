-- Problem: Customer Placing the Largest Number of Orders
-- Source: LeetCode (Problem 586)
-- Difficulty: Easy
-- Database: MySQL
-- Concepts: GROUP BY, COUNT, ORDER BY, LIMIT

/*
Problem:
Find the customer_number of the customer who placed the largest number of orders.
If multiple customers tie for the highest number, return any one of them.

Approach:
- Group orders by customer_number
- Count the number of orders per customer
- Sort by order count in descending order
- Return the top result
*/

SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(*) DESC
LIMIT 1;
