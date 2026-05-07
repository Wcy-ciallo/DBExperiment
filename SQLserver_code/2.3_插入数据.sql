use studentInfo;
GO

insert into student 
values
('20010101', 'Jone',   'M', 19, 'Computer'),
('20010102', 'Sue',    'F', 20, 'Computer'),
('20010103', 'Smith',  'M', 19, 'Math'),
('20030101', 'Allen',  'M', 18, 'Automation'),
('20030102', 'deepa',  'F', 21, 'Art'),
('20010104', 'Stefen', 'F', 20, 'Computer');

INSERT INTO course (Course_id, Course_name, PreCouId, Credits) 
VALUES
('C1', 'English',  NULL, 4),
('C2', 'Math',     'C1', 2),
('C3', 'Cprogram', 'C2', 2),
('C4', 'database', 'C2', 2);

INSERT INTO score (Student_id, Course_id, Grade) 
VALUES
('20010101', 'C1', 90),
('20010102', 'C1', 87),
('20010103', 'C1', 88),
('20010102', 'C2', 90),
('20010104', 'C2', 94),
('20010102', 'C3', 62),
('20030101', 'C3', 80),
('20010103', 'C4', 77);