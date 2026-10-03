

-- subquery  - ek query hai and iske ander humlog firse query like reh hai


SELECT AVG(age) AS total_avg_age FROM store.student;

SELECT name ,age
     FROM  store.student
     WHERE  age > (
        SELECT  AVG(age)
        FROM  store.student
     );