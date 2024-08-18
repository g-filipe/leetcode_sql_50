SELECT
    v.customer_id,
    COUNT(*) count_no_trans
FROM Visits v
LEFT JOIN Transactions t ON v.visit_id = t.visit_Id
WHERE t.transaction_id IS NULL
GROUP BY v.customer_id;