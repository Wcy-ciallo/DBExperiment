SELECT student.Student_id, student.Student_name, course.Course_id, course.Course_name
FROM student, course, score
WHERE student.Student_id = score.Student_id AND course.Course_id = score.Course_id;
