SELECT student.Student_name, student.Student_id, score.Course_id, score.Grade 
FROM student
LEFT JOIN score ON student.Student_id = score.Student_id;