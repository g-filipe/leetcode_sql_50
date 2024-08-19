WITH CTE AS (
    SELECT *, ROW_NUMBER() OVER ( PARTITION BY customer_id ORDER BY order_date ) rn_orders
    FROM Delivery
)
SELECT ROUND(AVG(IF(customer_pref_delivery_date = order_date, 1, 0)) * 100, 2) immediate_percentage
FROM CTE
WHERE rn_orders = 1;