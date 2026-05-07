CREATE VIEW CompstudentView1 AS
SELECT
  s.Student_id AS 学号,
  s.Student_name AS 姓名,
  sc.Grade AS 成绩
FROM student s
JOIN score sc ON s.Student_id = sc.Student_id
JOIN course c ON sc.Course_id = c.Course_id
WHERE s.department = 'Computer' 
  AND c.Course_name = 'database'
  AND sc.Grade > 80;
  