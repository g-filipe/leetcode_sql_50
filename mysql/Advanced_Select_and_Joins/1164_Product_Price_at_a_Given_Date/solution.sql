WITH CTE AS (
    SELECT 
        product_id, 
        IF(change_date <= '2019-08-16', new_price, 10) AS price,
        ROW_NUMBER() OVER(PARTITION BY product_id ORDER BY IF(DATEDIFF('2019-08-16', change_date) >= 0, DATEDIFF('2019-08-16', change_date), 10000000)) AS newer_price
    FROM Products
)
SELECT product_id, price
FROM CTE
WHERE newer_price = 1;