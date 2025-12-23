-- Problem: Game Play Analysis I
-- Source: LeetCode (Problem 511)
-- Difficulty: Easy
-- Database: MySQL
-- Concepts: GROUP BY, MIN

/*
Problem:
Find the first login date for each player.

Approach:
- Group records by player_id
- Use MIN(event_date) to determine the earliest login date
*/

SELECT
    player_id,
    MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id;
