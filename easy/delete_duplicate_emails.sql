-- Problem: Delete Duplicate Emails
-- Source: LeetCode (Problem 196)
-- Difficulty: Easy
-- Database: MySQL
-- Concepts: DELETE, SELF JOIN

/*
Problem:
Delete all duplicate email entries in the Person table,
keeping only the record with the smallest id for each email.

Approach:
- Self join Person table on email
- Delete rows with higher id values
*/

DELETE p1
FROM Person p1
JOIN Person p2
  ON p1.email = p2.email
 AND p1.id > p2.id;
