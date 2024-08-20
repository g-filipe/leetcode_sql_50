WITH same_email_group AS (
    SELECT *, ROW_NUMBER() OVER (PARTITION BY email ORDER BY id) rn
    FROM Person
)
DELETE FROM PERSON
WHERE id IN (
    SELECT id
    FROM same_email_group
    WHERE rn > 1
);