SELECT product_name, SUM(o.unit) unit
FROM Products p
JOIN Orders o ON o.product_id = p.product_id
WHERE DATE_FORMAT(o.order_date, '%Y-%m') = '2020-02'
GROUP BY p.product_name
HAVING SUM(o.unit) >= 100;