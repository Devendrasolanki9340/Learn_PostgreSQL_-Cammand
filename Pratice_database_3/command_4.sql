
CREATE TABLE products (
    product_id INT PRIMARY KEY ,
	product_name  VARCHAR(100),
	category TEXT ,
	price NUMERIC(10,2),
	stock_quantity INT ,
	is_available BOOLEAN ,
	added_on DATE
);


CREATE TABLE orders (
    order_id INT  PRIMARY KEY ,
	product_id INT ,
	quantity INT ,
	order_date DATE ,
	customer_name VARCHAR(50),
	payment_method VARCHAR(50),
	CONSTRAINT fk_product 
	     FOREIGN KEY (product_id)
		 REFERENCES products (product_id)
		 ON DELETE CASCADE
);




-- -- =========================


INSERT INTO products ( product_id,product_name ,category ,price ,stock_quantity ,is_available ,added_on )
VALUES 
 (123, 'Touch pad','Electronics',500.00, 120, false ,'2025-06-17'),
(124, 'Wireless Mouse', 'Electronics', 799.00, 50, TRUE, '2025-01-15'),
(125, 'Mechanical Keyboard', 'Electronics', 2499.00, 30, TRUE, '2025-02-10'),
(126, 'Office Chair', 'Furniture', 4500.00, 15, TRUE, '2025-03-05'),
(127, 'Notebook', 'Stationery', 80.00, 200, TRUE, '2025-03-20'),
(128, 'Water Bottle', 'Accessories', 350.00, 0, FALSE, '2025-04-12'),
(129, 'USB Cable', 'Electronics', 199.00, 100, TRUE, '2025-04-25'),
(130, 'Study Table', 'Furniture', 3200.00, 12, TRUE, '2025-05-08'),
(131, 'Pen Set', 'Stationery', 120.00, 75, TRUE, '2025-05-19'),
(132, 'Headphones', 'Electronics', 1499.00, 0, FALSE, '2025-06-01'),
(133, 'Backpack', 'Accessories', 999.00, 40, TRUE, '2025-06-17'),
(134, 'Smart Watch', 'Electronics', 2999.00, 25, TRUE, '2025-07-10'),
(135, 'Desk Lamp', 'Furniture', 650.00, 35, TRUE, '2025-07-22'),
(136, 'Drawing Book', 'Stationery', 150.00, 60, TRUE, '2025-08-05'),
(137, 'Power Bank', 'Electronics', 1299.00, 20, TRUE, '2025-08-18'),
(138, 'Sunglasses', 'Accessories', 599.00, 18, TRUE, '2025-09-02');




SELECT * FROM orders o  INNER JOIN products p
ON  o.product_id = p.product_id ;


SELECT o.order_id , p.product_name , p.price
FROM orders o  INNER JOIN products p
ON  o.product_id = p.product_id ;



SELECT p.product_name , o.order_id 
FROM  products p   INNER JOIN  orders o
ON  o.product_id = p.product_id ;




SELECT   o.order_id ,o.customer_name , p.product_name , p.category
FROM  
orders o  JOIN  products p
ON  o.product_id = p.product_id ;


SELECT   o.order_id ,o.customer_name , p.product_name , p.category
FROM  
orders o  JOIN  products p
ON  o.product_id = p.product_id 
 WHERE p.category ='Electronics';



SELECT   o.order_id , p.product_name , p.price 
FROM  
orders o  JOIN  products p
ON  o.product_id = p.product_id 
ORDER BY  p.price DESC ;



SELECT   o.order_id , p.product_name , p.price 
FROM  
orders o  JOIN  products p
ON  o.product_id = p.product_id 
ORDER BY  p.price ASC ;



SELECT  p.product_name , COUNT (o.order_id) AS total_orders 
FROM  products p
LEFT JOIN orders o  ON  p.product_id  = o.product_id 
GROUP BY  p.product_name ;



SELECT  p.product_name,   SUM(o.quantity * p.price) AS revenue 
FROM  products p
LEFT JOIN orders o  ON  p.product_id  = o.product_id 
GROUP BY  p.product_name 
 HAVING  SUM(o.quantity * p.price) >2000;



SELECT  p.product_name,   SUM(o.quantity * p.price) AS revenue 
FROM  products p
LEFT JOIN orders o  ON  p.product_id  = o.product_id 
GROUP BY  p.product_name ; 



SELECT DISTINCT o.customer_name 
FROM orders o
JOIN products p ON o.product_id = p.product_id
WHERE  P.category = 'Fitness' ;



SELECT *FROM orders;

SELECT *FROM products;




CREATE VIEW fitness_items AS
SELECT product_id , name , price , stock_quantity
FROM products
WHERE category = 'Fitness';




CREATE VIEW low_stock AS
SELECT  name , category , stock_quantity
FROM products
WHERE stock_quantity <30 ;




SELECT * FROM low_stock ;

SELECT *FROM fitness_items;








CREATE PROCEDURE add_product (
	product_id,
	product_name ,
	category ,price ,
	stock_quantity ,
	is_available ,
	added_on 
)
LANGUAGE plpgsql
AS $$
BEGIN 
    INSERT INTO products (name , sku_code , price , stock_quantity , category)
    VALUES (name , sku ,price , qty ,category );

	RAISE NOTICE 'product added successfully' ;
	END;
	$$;




 (123, 'Touch pad','Electronics',500.00, 120, false ,'2025-06-17'),
CALL  add_product('DIGITAL PEN',900.43,102,'Electronics')





SELECT *FROM products;










