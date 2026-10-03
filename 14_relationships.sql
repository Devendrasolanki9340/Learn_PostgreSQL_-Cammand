


-- one to one relationship
-- one to many 
-- inner join , left join
-- aggregate function 
-- group by 
-- having 
-- subsqueries 
-- transaction
-- on conflict / upsert


CREATE TABLE store.student(
    id INTEGER PRIMARY KEY ,
    name TEXT ,
    age  INTEGER
);

INSERT INTO  store.student
VALUES 
--    id , name , age
 (1, 'Ram', 22),
 (2, 'Dev', 20),
 (3, 'jio', 21),
 (4, 'roy', 65),
 (5, 'lozzz', 40),
 (6, 'jeem', 43),
 (7, 'Aman', 33),
 (8, 'Raya', 15),
 (9, 'neha', 25),
 (10, 'anav', 10);


 CREATE TABLE store.student_profiles (
    student_id INTEGER PRIMARY KEY REFERENCES store.student(id),
    city TEXT
 );

 INSERT INTO store.student_profiles
 VALUES 
--     id , city 
  (1, 'Delhi'),
  (2, 'kgn'),
  (3, 'indore'),
  (4, 'khandva'),
  (5, 'bhopal'),
  (6, 'mashware'),
  (7, 'bistan'),
  (8, 'surt'),
  (9, 'mumbai'),
  (10, 'Bangalore');

  CREATE TABLE store.courses(
    id INTEGER PRIMARY KEY,
     courses_name TEXT,
     fee INTEGER
  );
  INSERT INTO store.courses
   VALUES 
    ( 1, 'postgreSQL', 1000),
    ( 2, 'MERN', 9000),
    ( 3, 'PERN', 10000),
    ( 4, 'Full stack', 50000),
    ( 5, 'Bcakend dev', 8000),
    ( 6, 'Frontend dev', 5000),
    ( 7, 'Devops d', 20000),
    ( 8, 'AIML ', 80000);

  CREATE TABLE  store.enrollment(
    students_id INTEGER REFERENCES store.student(id),
    courses_id INTEGER REFERENCES store.courses(id),    
    Score INTEGER
  );

  INSERT INTO store.enrollment
    VALUES 
    -- student_id  , coures_id   , ingrole_student
     (1 ,1 , 25),
     (2 ,2 , 15),
     (3 ,5 , 45),
     (4 ,1 , 55),
     (5 ,6 , 10),
     (6 ,8 , 5),
     (7 ,3 , 8),
     (8 ,7 , 50),
     (9 ,4 , 9),
     (10 ,2 , 115);

  