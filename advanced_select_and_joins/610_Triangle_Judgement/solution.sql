SELECT x, y, z,
    CASE
        WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes'
        ELSE 'No'
    END triangle
FROM Triangle

-------- ALTERNATIVE SOLUTION ------
-- SELECT *, IF( x + y > z AND y + z > x AND z + x > y,'Yes','No') triangle
-- FROM triangle;