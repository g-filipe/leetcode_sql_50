WITH CTE AS (
    SELECT person_name, SUM(Weight) OVER (ORDER BY turn) AS total_weight
    FROM Queue 
)
SELECT person_name 
FROM CTE
WHERE total_weight <= 1000
ORDER BY total_weight DESC 
LIMIT 1;
-- SELECT q1.person_name 
-- FROM Queue q1
-- WHERE (
--     SELECT SUM(q2.weight) 
--     FROM Queue q2
--     WHERE q2.turn <= q1.turn
-- ) <= 1000
-- ORDER BY q1.turn DESC
-- LIMIT 1;