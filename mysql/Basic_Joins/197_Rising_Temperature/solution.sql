SELECT w.id
FROM Weather w
INNER JOIN Weather prev_day ON w.recordDate = DATE_ADD(prev_day.recordDate, INTERVAL 1 DAY)
WHERE w.temperature > prev_day.temperature;