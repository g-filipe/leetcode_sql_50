WITH second_highest_salary AS (
    SELECT *, DENSE_RANK() OVER (ORDER BY salary DESC) AS rk_salary
    FROM Employee
)
SELECT MAX(salary) AS SecondHighestSalary
FROM second_highest_salary
WHERE rk_salary = 2;

----------- ALTERNATIVE SOLUTION --------------
-- WITH second_highest_salary AS (
--     SELECT *, DENSE_RANK() OVER (ORDER BY salary DESC) AS rk_salary
--     FROM Employee
-- )
-- SELECT (
--     SELECT s1.salary
--     FROM second_highest_salary s1
--     WHERE s1.rk_salary = 2
-- ) AS SecondHighestSalary
-- SELECT MAX(salary) AS SecondHighestSalary
-- FROM Employee
-- WHERE salary < (SELECT MAX(salary) FROM Employee);