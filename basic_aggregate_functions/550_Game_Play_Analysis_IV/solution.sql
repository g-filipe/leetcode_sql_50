WITH CTE AS (
    SELECT *, ROW_NUMBER() OVER ( PARTITION BY player_id ORDER BY event_date) rn_login
    FROM Activity
)
SELECT ROUND(COUNT(*) / (
    SELECT COUNT(DISTINCT player_id)
    FROM Activity
), 2) fraction
FROM CTE c
WHERE c.rn_login = 1 AND EXISTS (
    SELECT *
    FROM CTE c2
    WHERE c.player_id = c2.player_id AND c2.rn_login = 2 AND c2.event_date = ADDDATE(c.event_date, INTERVAL 1 DAY)
    LIMIT 1
);
----- Alternative Solution -------
-- WITH FIRST_LOGIN AS (
--     SELECT player_id, MIN(event_date) first_login_date
--     FROM Activity 
--     GROUP BY player_id
-- )
-- SELECT ROUND(SUM(DATEDIFF(a.event_date, fl.first_login_date) = 1 ) / COUNT(DISTINCT a.player_id), 2) fraction
-- FROM Activity a
-- JOIN first_login fl ON a.player_id = fl.player_id;