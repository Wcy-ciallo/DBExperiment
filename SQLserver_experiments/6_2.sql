CREATE PROCEDURE updateStudent
  @Student_id VARCHAR(20),
  @Student_name VARCHAR(50),
  @sex VARCHAR(10),
  @age INT,
  @department VARCHAR(50)
AS
BEGIN
  UPDATE student
  SET Student_name = @Student_name,
      sex = @sex,
      age = @age,
      department = @department
  WHERE Student_id = @Student_id;
END;