SELECT student.Student_name, student.Student_id
FROM student
JOIN score ON student.Student_id = score.Student_id
GROUP BY student.Student_name, student.Student_id
HAVING COUNT(score.Course_id) > 3;