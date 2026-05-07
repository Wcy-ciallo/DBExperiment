SELECT score.Student_id, Student_name, SUM(Grade)  
FROM score
JOIN student ON score.Student_id = student.Student_id
GROUP BY score.Student_id, Student_name;
-- 如果用到聚合函数和group by，并且select中选择了其他属性列，那么group by中必须包含select所有其他属性列。

SELECT score.Student_id, student.Student_name, SUM(score.Grade)
FROM score, student
WHERE score.Student_id = student.Student_id
GROUP BY score.Student_id, student.Student_name;
