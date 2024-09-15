WITH FirstYearSales AS (
    SELECT product_id, year, quantity, price, RANK() OVER (PARTITION BY product_id ORDER BY year) f_year 
    FROM Sales
)
SELECT product_id, year first_year, quantity, price
FROM FirstYearSales
WHERE f_year = 1;