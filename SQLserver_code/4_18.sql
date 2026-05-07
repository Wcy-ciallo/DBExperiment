SELECT student.Student_id, student.Student_name, course.Course_name, score.Grade
FROM student, score, course
WHERE student.Student_id = score.Student_id AND score.Course_id = course.Course_id;