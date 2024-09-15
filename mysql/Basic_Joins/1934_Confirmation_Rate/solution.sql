SELECT s.user_id, 
    ROUND(
        AVG(
            IF(c.action = "confirmed", 1, 0)), 2) confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY user_id;
-- SELECT s.user_id, ROUND ((
--     SELECT COUNT(*) 
--     FROM Confirmations c2
--     WHERE c2.action = 'confirmed' AND c2.user_id = s.user_id
-- ) / COUNT(*), 2) confirmation_rate
-- FROM Signups s
-- LEFT JOIN Confirmations c ON s.user_id = c.user_id
-- GROUP BY s.user_id