USE studentInfo;
GO

CREATE TABLE student (
  Student_id CHAR(10) PRIMARY KEY,
  Student_name CHAR(10) NOT NULL,
  sex CHAR(1) NOT NULL CHECK(sex IN ('F', 'M')),
  age INT NULL,
  department CHAR(15) DEFAULT 'computer'
);

create table course (
  Course_id char(6) primary key,
  Course_name char(20) NOT NULL,
  PreCouId char(6) NULL,
  Credits numeric(3, 1) NOT NULL
);

create table score (
  Student_id char(10),
  Course_id char(6),
  Grade numeric(3, 1) NULL check(Grade > 0 and Grade < 100),
  primary key(Student_id, Course_id),
  foreign key(Student_id) references student(Student_id),
  foreign key(Course_id) references course(Course_id)
);