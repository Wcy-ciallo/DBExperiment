USE studentInfo;
GO

CREATE VIEW MathStudent AS
SELECT *
FROM student
WHERE department = 'Math';