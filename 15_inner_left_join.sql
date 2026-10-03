


-- inner jion  - combains data ko do table se 
-- it will retrun rows jaha peh matching value exists hego dono table meh




-- SELECT
--    student.name,
--    student_profiles.city
-- FROM store.student
-- INNER JOIN store.student_profiles
--     ON student.id = student_profiles.student_id;





-- left join  - - return karega all from left table 



SELECT
   student.name,
   student_profiles.city
FROM store.student
LEFT JOIN store.student_profiles
    ON student.id = student_profiles.student_id;