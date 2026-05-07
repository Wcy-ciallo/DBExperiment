SELECT student.Student_id, student.Student_name, AVG(score.Grade)
FROM student, score
WHERE student.Student_id = score.Student_id AND student.department = 'Computer'
GROUP BY student.Student_id, student.Student_name
HAVING COUNT(score.Course_id) > 2
ORDER BY AVG(score.Grade) DESC;