CREATE PROCEDURE insertStudent
  @Student_id VARCHAR(20),
  @Student_name VARCHAR(50),
  @sex VARCHAR(10),
  @age INT,
  @department VARCHAR(50)
AS
BEGIN
  INSERT INTO student(Student_id, Student_name, sex, age, department)
  VALUES(@Student_id, @Student_name, @sex, @age, @department)
END;