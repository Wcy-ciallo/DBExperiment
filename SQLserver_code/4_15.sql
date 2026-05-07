SELECT Course_id, COUNT(Student_id)
FROM score
GROUP BY Course_id;