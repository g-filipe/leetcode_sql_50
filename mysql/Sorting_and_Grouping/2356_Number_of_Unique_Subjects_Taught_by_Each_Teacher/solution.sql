SELECT teacher_id, COUNT(DISTINCT subject_id) cnt
FROM Teacher
GROUP BY teacher_id;
-- WITH CTE AS (
--     SELECT DISTINCT teacher_id, subject_id
--     FROM Teacher
-- )
-- SELECT teacher_id, COUNT(*) cnt
-- FROM CTE
-- GROUP BY teacher_id