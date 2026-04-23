Create Table actor_name (
  first_name varchar(45) Not NULL,
  last_name varchar(45) Not NULL
);

Insert Into actor_name (first_name, last_name)
Select first_name, last_name
From actor;