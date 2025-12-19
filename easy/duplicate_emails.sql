-- Problem: Duplicate Emails
-- Source: LeetCode (Problem 182)
-- Difficulty: Easy
-- Database: MySQL
-- Concepts: GROUP BY, HAVING, COUNT

/*
Problem:
Find all duplicate emails in the Person table.
An email is considered duplicate if it appears more than once.
*/

SELECT
    email AS Email
FROM Person
GROUP BY email
HAVING COUNT(*) > 1;
