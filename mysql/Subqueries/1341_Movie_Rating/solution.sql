WITH The_Greatest_Rater AS (
    SELECT name 
    FROM MovieRating mr
    JOIN Users u ON mr.user_id = u.user_id
    GROUP BY mr.user_id
    ORDER BY COUNT(*) DESC, name ASC
    LIMIT 1
),
Best_Movie_Fev_2020 AS (
    SELECT title
    FROM Movies m
    JOIN MovieRating mr ON mr.movie_id = m.movie_id
    WHERE DATE_FORMAT(mr.created_at, '%Y-%m') = '2020-02'
    GROUP BY mr.movie_id
    ORDER BY AVG(mr.rating) DESC, title ASC
    LIMIT 1
)
SELECT name as results
FROM The_Greatest_Rater 
UNION ALL
SELECT title
FROM Best_Movie_Fev_2020;