SELECT AVG(Grade), MAX(Grade), MIN(Grade)
FROM score, course
WHERE score.Course_id = course.Course_id AND course.Course_name = 'CProgram';

SELECT score.Student_id
FROM score
WHERE score.Grade = (
  SELECT MAX(Grade)
  FROM score, course
  WHERE score.Course_id = course.Course_id AND course.Course_name = 'CProgram'
) OR score.Grade = (
  SELECT MIN(Grade)
  FROM score, course
  WHERE score.Course_id = course.Course_id AND course.Course_name = 'CProgram'
)