USE studentInfo;
GO

SELECT Student_name, Course_name
FROM score s1, student s2, course
WHERE s1.Student_id = s2.Student_id AND s1.Course_id = course.Course_id;

UPDATE score
SET Grade = Grade + 5;