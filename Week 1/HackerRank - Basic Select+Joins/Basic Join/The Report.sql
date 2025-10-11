SELECT CASE
    WHEN g.grade > 7 THEN s.name
    ELSE NULL
    END AS names,
    g.grade,
    s.marks
FROM students as s
    JOIN grades as g
    ON s.marks BETWEEN g.min_mark AND g.max_mark
ORDER  BY g.grade DESC,
    names ASC,
    s.marks ASC; 
