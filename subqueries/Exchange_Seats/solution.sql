SELECT id,
    CASE
        WHEN id % 2 = 0 THEN LAG(student, 1, student) OVER (ORDER BY id)
        ELSE LEAD(student, 1, student) OVER (ORDER BY id)
    END AS student
FROM Seat;