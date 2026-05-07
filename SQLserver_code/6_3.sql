CREATE PROCEDURE deleteStudent
  @Student_id VARCHAR(20)
AS
BEGIN
  DELETE FROM student
  WHERE Student_id = @Student_id;
END;