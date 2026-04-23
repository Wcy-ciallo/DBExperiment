SELECT Student_id, Student_name
FROM student
WHERE student.department IN (
  SELECT department FROM student
  WHERE Student_name = 'sue'
);