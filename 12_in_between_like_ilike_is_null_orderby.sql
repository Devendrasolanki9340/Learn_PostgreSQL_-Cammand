

-- IN  ->  matching the values in the list

-- SELECT name,price FROM store.products WHERE name IN ('Laptop Stand','Mobile','Keyboard');



-- BETWEEN  ->  matching the values in the range

-- SELECT name,price FROM store.products WHERE price BETWEEN 500.00 AND 800.00;



--  LIKE  -> like ko use karna hai jab humko search karna hoga kya ?? text ye patter wish / matching the values with the pattern  

-- 'Mouse%'  -->  starting with Mouse
-- '%Mouse'  -->  ending with Mouse
-- '%Mouse%'  -->  containing Mouse anywhere

-- SELECT name FROM store.products WHERE name LIKE ' %Mouse% '



-- '_means'  - exact one character
-- '_ouse'   - exaxt one character match

-- SELECT name FROM store.products WHERE name LIKE '_ouse';
-- SELECT name FROM store.products WHERE name LIKE '_cable';


--  LIKE is case sensitive
-- ignores uppercase and lowrcase




-- IS NULL   -- find the null value of the catca  / that not provide the vlaue 

-- SELECT name, category_id FROM store.products WHERE category_id IS NULL;





--IS NOT NULL   -- id vale value aa jeyge ge   / that provide the value


-- SELECT name, category_id FROM store.products WHERE category_id IS NOT NULL;





--  ORDERBY

-- SELECT name, price FROM store.products ORDER BY price DESC ;
SELECT name, price FROM store.products ORDER BY price ASC ;