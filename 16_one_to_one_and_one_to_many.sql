


-- ome to one -  ek row from first table jo connect hoga ek hi row se in second table


-- SELECT
--    student.name,
--    student_profiles.city
-- FROM store.student
-- INNER JOIN store.student_profiles
--     ON student.id = student_profiles.student_id;




-- one to many  -     

SELECT 
   courses.courses_name,
   enrollment.students_id

FROM store.courses
INNER JOIN store.enrollment
    ON courses_id = enrollment.courses_id;

     

    -- enrollments
    --  student_id  coures_id
    -- 1 ,1
    -- 1 ,2
    -- 2 ,1