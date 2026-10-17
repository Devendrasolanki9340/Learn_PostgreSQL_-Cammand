

CREATE TABLE students(
student_id SERIAL Primary key ,
name VARCHAR(100),
age bigint
);

insert into students(name , age)
values ('dev' ,20),
      ( 'Ram' ,21);



ALTER TABLE students 
ADD COLUMN email  VARCHAR(100) D;



ALTER TABLE students 
DROP COLUMN email ;




SELECT  * FROM  students ;	  