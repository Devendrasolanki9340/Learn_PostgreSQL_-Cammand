

CREATE TABLE  Products (
product_id serial PRIMARY KEY ,
name  varchar (100) not NULL ,
sku_code char (8) unique NOT NULL ,
price numeric(10,2) check (price >= 0) ,
stock_quantity int default 0 check	(stock_quantity >=0),
is_available BOO
)


SELECT * FROM Products;

SELECT * FROM Products order by price ;

SELECT * FROM Products order by price DESC ;

SELECT * FROM Products order by name ;


SELECT * FROM Products limit 3 ;


SELECT name as Item_name , price as Item_price  FROM Products  ;


SELECT Distinct category  FROM Products ;




SELECT *  FROM Products  WHERE category = 'Electronics';



SELECT *  FROM Products  WHERE category != 'Electronics';



SELECT *  FROM Products  WHERE price >= 500 ;



SELECT *  FROM Products  WHERE price <= 100 and category = 'Electronics' ;



SELECT *  FROM Products  WHERE price  100 Bet ;



SELECT *  FROM Products  WHERE not category = 'Electronics' ;



SELECT count(Product) FROM Products;





























