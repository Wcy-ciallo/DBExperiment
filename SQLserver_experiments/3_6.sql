USE studentInfo;
GO

UPDATE score
SET Grade = Grade + 10
WHERE Course_id IN (SELECT Course_id FROM course WHERE Course_name = 'Database');