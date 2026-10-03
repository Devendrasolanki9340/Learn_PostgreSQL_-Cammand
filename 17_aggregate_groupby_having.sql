


-- count  , sum   , Avg  , min and max


--  count
-- SELECT COUNT(*) AS  total_student FROM  store.student


--  SUm
-- SELECT SUM(score) AS  total_score_value FROM  store.enrollment


--  Avg
-- SELECT AVG(score) AS  total_avg_score FROM  store.enrollment



--  min
-- SELECT MIN(score) AS  min_value FROM  store.enrollment



-- SELECT 
--         MIN(age) AS  lowest_age ,
--         MAX(age) AS  highest_age 
--       FROM  store.student;



-- max
-- SELECT MAX(score) AS  max_score FROM  store.enrollment



-- SELECT 
--      COUNT(*) AS total_students,
--      SUM(score) AS  totle_score,
--      AVG(score) AS  avg_score,
--      MIN(score) AS  lowest_score,
--      MAX(score) AS  highest_score
--      FROM  store.enrollment;




--  group by -- rows ko ek group meh daalta hai based on same value 


-- SELECT 
--      courses_id , 
--      COUNT(*) AS total_students
--      FROM store.enrollment
--      GROUP BY  courses_id ;




--  having --- group folter karn hai
-- grupt by  - group create karega 


-- SELECT 
--      courses_id , 
--      COUNT(*) AS total_students
--      FROM store.enrollment
--      GROUP BY  courses_id 
--      HAVING COUNT(*) <= 2 ;