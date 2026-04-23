USE studentInfo;
GO

DELETE 
FROM student
WHERE Student_id IN (SELECT Student_id FROM student s1, score s2 WHERE s1.Student_id = s2.Student_id AND s1.department = 'Computer' AND s2.Grade < 60);