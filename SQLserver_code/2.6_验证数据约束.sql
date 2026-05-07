USE studentInfo;
GO

---------------------------------------------------
-- 1. 验证 DEFAULT 约束 (默认值)
---------------------------------------------------
-- 我们不输入 department 字段的值。
-- 插入成功后，因为默认约束，Alice 的 department 会自动变成 'computer'。
INSERT INTO student (Student_id, Student_name, sex, age) 
VALUES ('S001', 'Alice', 'F', 20);

-- 插入一条合法课程数据，为下面做准备
INSERT INTO course (Course_id, Course_name, Credits) 
VALUES ('C001', 'Database', 3.0);


---------------------------------------------------
-- 2. 验证 CHECK 约束 (检查约束)
---------------------------------------------------
-- 预期报错：检查性别。因为性别被限制为了 'F' 或 'M'，输入 'X' 会报错拦截。
INSERT INTO student (Student_id, Student_name, sex, age, department) 
VALUES ('S002', 'Bob', 'X', 21, 'Math');

-- 预期报错：检查分数。因为 Grade 限制了 0 < Grade < 100，输入 120 会报错拦截。
INSERT INTO score (Student_id, Course_id, Grade) 
VALUES ('S001', 'C001', 120);


---------------------------------------------------
-- 3. 验证 PRIMARY KEY 约束 (主键唯一)
---------------------------------------------------
-- 预期报错：上面已经插入过学号为 'S001' 的学生，学号是主键不能重复。
INSERT INTO student (Student_id, Student_name, sex) 
VALUES ('S001', 'Charlie', 'M');


---------------------------------------------------
-- 4. 验证 FOREIGN KEY 约束 (外键约束)
---------------------------------------------------
-- 预期报错：学号 'S999' 根本不存在于 student 表中，不能直接给其录入成绩。
INSERT INTO score (Student_id, Course_id, Grade) 
VALUES ('S999', 'C001', 80);