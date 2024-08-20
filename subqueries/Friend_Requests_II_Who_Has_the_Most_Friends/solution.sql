WITH combined_counts AS (
    SELECT requester_id AS id, COUNT(requester_id) as count
    FROM RequestAccepted
    GROUP BY requester_id
    UNION ALL
    SELECT accepter_id AS id, COUNT(accepter_id) as count
    FROM RequestAccepted
    GROUP BY accepter_id
)
SELECT id, SUM(count) as num
FROM combined_counts
GROUP BY id
ORDER BY num DESC
LIMIT 1;