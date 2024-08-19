WITH categories AS (
    SELECT 'Low Salary' AS category
    UNION
    SELECT 'Average Salary'
    UNION
    SELECT 'High Salary'
),
account_counts AS (
    SELECT
        CASE
            WHEN income < 20000 THEN 'Low Salary'
            WHEN income <= 50000 THEN 'Average Salary'
            ELSE 'High Salary'
        END AS category,
        COUNT(*) accounts_count
    FROM Accounts a
    GROUP BY category
)
SELECT
    c.category,
    COALESCE(a.accounts_count, 0) as accounts_count
FROM Categories c
LEFT JOIN account_counts a ON c.category = a.category;