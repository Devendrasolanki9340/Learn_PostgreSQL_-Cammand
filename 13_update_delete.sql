

--  Update

-- UPDATE  store.products SET price = 2300.00 WHERE name = 'car' RETURNING id, name , price ;

  
-- UPDATE  store.products SET name = 'caar' WHERE price = 2300.00 RETURNING id, name , price ;

-- UPDATE  store.products SET id = 43 WHERE price = 2300.00 RETURNING id, name , price ;




-- DELETE 

 DELETE FROM store.products WHERE  name = 'caar' RETURNING id, name , price ;











-- SELECT * FROM store.products;
