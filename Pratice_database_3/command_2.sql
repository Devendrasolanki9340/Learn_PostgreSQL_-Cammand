


CREATE TABLE students(
  students_id SERIAL PRIMARY KEY ,
  name VARCHAR(100) NOT NULL
);


INSERT INTO students (name)
VALUES ('DEV DOT'),
       ('BACKEND DEV'),
	   ('RAM DEV');



CREATE TABLE students_profiles(
students_id INT PRIMARY KEY ,
    address TEXT ,
	age INT
)


SELECT * FROM  students_profiles;

SELECT * FROM students;