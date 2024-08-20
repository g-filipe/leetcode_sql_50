WITH week_visit AS (
    SELECT *, DENSE_RANK() OVER (ORDER BY visited_on) for_each_7
    FROM Customer
),
visit_days AS (
    SELECT DISTINCT visited_on FROM week_visit
    WHERE for_each_7 >= 7
)
SELECT
    vd.visited_on,
    (
        SELECT SUM(amount)
        FROM Customer c
        WHERE DATEDIFF(vd.visited_on, c.visited_on) BETWEEN 0 AND 6
    ) AS amount,
    (
        SELECT ROUND(SUM(amount)/7,2)
        FROM Customer c
        WHERE DATEDIFF(vd.visited_on, c.visited_on) BETWEEN 0 AND 6
    ) AS average_amount
FROM visit_days vd
ORDER BY vd.visited_on;