WITH High_Earners AS (
    SELECT *, DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) rank_earners
    FROM Employee
)
SELECT d.name AS Department, he.name AS Employee, he.salary AS Salary
FROM High_Earners he
JOIN Department d ON he.departmentId = d.id
WHERE he.rank_earners <= 3;