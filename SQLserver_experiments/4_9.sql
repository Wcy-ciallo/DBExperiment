SELECT Student_id, Student_name
FROM student
WHERE Student_name NOT LIKE 'S%' OR Student_name NOT LIKE 'D%' OR Student_name NOT LIKE 'J%';