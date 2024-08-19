WITH ConsecutiveNumsCTE AS (
    SELECT
        id,
        num,
        LEAD(id, 1) OVER (ORDER BY id) AS next_id,
        LEAD(id, 2) OVER (ORDER BY id) AS next_next_id,
        LEAD(num, 1) OVER (ORDER BY id) AS next_num,
        LEAD(num, 2) OVER (ORDER BY id) AS next_next_num
    FROM Logs
)
SELECT DISTINCT num AS ConsecutiveNums
FROM ConsecutiveNumsCTE
WHERE
    num = next_num AND num = next_next_num AND
    id + 1 = next_id AND id + 2 = next_next_id;

------ ALTERNATIVE SOLUTION --------------
-- SELECT DISTINCT a.num as ConsecutiveNums
-- FROM Logs a
-- CROSS JOIN Logs b
-- CROSS JOIN Logs c
-- WHERE b.id = a.id+1 AND c.id = b.id+1 AND a.num = b.num AND c.num = a.num