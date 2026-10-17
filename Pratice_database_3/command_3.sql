


CREATE TABLE students(
  students_id SERIAL PRIMARY KEY ,
  name VARCHAR(100) NOT NULL
);


INSERT INTO students (name)
VALUES ('DEV DOT'),
       ('BACKEND DEV'),
	   ('RAM DEV');



CREATE TABLE student_profiles(
students_id INT PRIMARY KEY ,
    address TEXT ,
	age INT
)



SELECT * FROM  students s JOIN marks m ON s.student_id = m.student_id ;



SELECT s.name , m.subject , m.marks FROM  students s JOIN marks m ON s.student_id = m.student_id ;





SELECT s.name , m.subject , m.marks 
FROM  students s JOIN marks m 
ON s.student_id = m.student_id 
WHERE name = 'RAM DEV';




SELECT s.name , m.subject , m.marks 
FROM  students s LEFT JOIN marks m 
ON s.student_id = m.student_id ;



SELECT s.name , m.subject , m.marks 
FROM  students s RIGHT JOIN marks m 
ON s.student_id = m.student_id ;



INSERT INTO  students (name)
VALUES ('Harsh patel');



INSERT INTO marks (student_id , subject , marks)
VALUES ( 4, 'English' ,43);





--  many to many relation



CREATE TABLE courses(
  course_id INT PRIMARY KEY ,
  course_name VARCHAR (100)
);


INSERT INTO courses (course_id , course_name) 
VALUES    (101, 'REACT'),
          (102, 'NODEJS'),
		  (103, 'EXPRESS'),
		  (104 , 'MONGODB');



--  create the junction table


CREATE TABLE student_courses (
    student_id INT ,
	course_id INT ,
	PRIMARY KEY (student_id  , course_id),
	FOREIGN KEY (student_id) REFERENCES students (student_id),
	FOREIGN KEY (course_id) REFERENCES courses( course_id)
);


INSERT INTO student_courses (student_id ,course_id) 
VALUES    (1, 101),
          (2,102),
		  (2,103),
		  (3,103),
		  (4,101),
		  (4,103);



SELECT   
s.name ,
c.course_name 
FROM
student_courses sc 
JOIN students s ON  sc.student_id = s.student_id
JOIN courses c ON  sc.course_id = c.course_id ;




SELECT   
c.course_name 
FROM
student_courses sc 
JOIN students s ON  sc.student_id = s.student_id
JOIN courses c ON  sc.course_id = c.course_id 
WHERE   s.name = 'RAM DEV';




SELECT * FROM  student_courses;

SELECT * FROM  courses;

SELECT * FROM  student_profiles;

SELECT * FROM students;



SELECT * FROM marks;













