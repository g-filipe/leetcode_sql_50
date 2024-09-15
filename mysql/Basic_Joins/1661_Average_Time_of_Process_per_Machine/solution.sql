WITH CTE AS (
    SELECT 
        act_1.machine_id,
        act_1.timestamp start,
        act_2.timestamp end
    FROM Activity act_1
    JOIN Activity act_2 
    ON act_1.machine_id = act_2.machine_id
     AND act_1.process_id = act_2.process_id
     AND act_1.activity_type = 'start'
     AND act_2.activity_type = 'end'
)
SELECT machine_id, ROUND(AVG(end - start),3) processing_time
FROM CTE
GROUP BY machine_id;