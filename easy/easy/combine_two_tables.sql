-- Problem: Combine Two Tables
-- Difficulty: Easy
-- Topic: LEFT JOIN
-- Platform: LeetCode
--
-- Key Idea:
-- Use a LEFT JOIN to return all persons, even if they do not have an address.
-- If no matching address exists, city and state should be NULL.

SELECT
    p.firstName,
    p.lastName,
    a.city,
    a.state
FROM Person p
LEFT JOIN Address a
ON p.personId = a.personId;
