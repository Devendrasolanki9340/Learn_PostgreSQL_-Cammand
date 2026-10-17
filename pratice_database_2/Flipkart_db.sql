

-- CREATE TABLE  Products (
-- product_id serial PRIMARY KEY ,
-- name  varchar (100) not NULL ,
-- sku_code char (8) unique NOT NULL check (char_length(sku_code) = 8) ,
-- price numeric(10,2) not null check (price >= 0) ,
-- stock_quantity int default 0 check	(stock_quantity >=0),
-- is_available BOOLEAN default TRUE ,
-- category text not NULL ,
-- added_on date default current_date ,
-- last_update Timestamp default now()
-- );




-- INSERT INTO Products (name, sku_code, price, stock_quantity, is_available, category) VALUES 
-- ('Wireless Noise-Canceling Headphones', 'HP-99281', 149.99, 45, 'TRUE', 'Electronics'),
-- ('55-Inch Smart 4K UHD TV', 'TV-4K55X', 499.00, 12, 'TRUE', 'Electronics'),
-- ('Ergonomic RGB Gaming Mouse', 'MS-RGB07', 35.50, 150, 'TRUE', 'Electronics'),
-- ('Classic Black Leather Jacket', 'AP-LJ002', 120.00, 25, 'TRUE', 'Apparel'),
-- ('Lightweight Running Shoes', 'SH-RUN99', 85.00, 80, 'TRUE', 'Apparel'),
-- ('Digital Air Fryer 5.8QT', 'KT-AF58D', 89.95, 60, 'TRUE', 'Home & Kitchen'),
-- ('Queen Size Egyptian Cotton Sheets', 'BD-QEC01', 65.00, 35, 'TRUE', 'Home & Kitchen'),
-- ('The Chronicles of Orion (Hardcover)', 'BK-ORI77', 24.99, 200, 'TRUE', 'Books'),
-- ('Pro Quadcopter Drone 4K', 'DR-PRO4K', 299.99, 0, 'FALSE', 'Electronics'),
-- ('Retro Countertop Blender', 'KT-RBL04', 45.00, 0, 'FALSE', 'Home & Kitchen'),
-- ('14-Inch Business Laptop', 'CP-LT14B', 899.00, 15, 'TRUE', 'Computers'),
-- ('Mechanical Gaming Keyboard', 'CP-KB88M', 79.99, 85, 'TRUE', 'Computers'),
-- ('Ergonomic Mesh Office Chair', 'OF-CH021', 189.50, 20, 'TRUE', 'Office Supplies'),
-- ('Dual-Band Wi-Fi 6 Router', 'NW-RT600', 115.00, 40, 'TRUE', 'Electronics'),
-- ('Hydrating Hyaluronic Acid Serum', 'BT-SR30M', 22.00, 310, 'TRUE', 'Beauty'),
-- ('Matte Liquid Lipstick Set', 'BT-LP05X', 34.50, 140, 'TRUE', 'Beauty'),
-- ('Electric Sonic Toothbrush', 'HB-TB200', 59.95, 75, 'TRUE', 'Health & Personal Care'),
-- ('Organic Lavender Essential Oil', 'HB-EO10L', 14.99, 250, 'TRUE', 'Health & Personal Care'),
-- ('1000-Piece Landscape Jigsaw Puzzle', 'TY-PZ100', 18.99, 120, 'TRUE', 'Toys & Hobbies'),
-- ('Remote Control Stunt Car', 'TY-RCC04', 29.99, 65, 'TRUE', 'Toys & Hobbies'),
-- ('Acoustic Six-String Guitar', 'MU-AG300', 135.00, 18, 'TRUE', 'Musical Instruments'),
-- ('Adjustable Dumbbell Set (50 lbs)', 'FT-DB050', 249.99, 8, 'TRUE', 'Fitness'),
-- ('High-Density Yoga Mat (6mm)', 'FT-YM006', 25.00, 190, 'TRUE', 'Fitness'),
-- ('Stainless Steel Insulated Water Bottle', 'FT-WB32O', 19.99, 400, 'TRUE', 'Fitness'),
-- ('Premium Arabica Coffee Beans 1lb', 'GR-CB001', 16.50, 500, 'TRUE', 'Grocery'),
-- ('Organic Matcha Green Tea Powder', 'GR-MT100', 28.00, 220, 'TRUE', 'Grocery'),
-- ('Next-Gen Gaming Console 1TB', 'CP-VG500', 499.99, 0, 'FALSE', 'Computers'),
-- ('Smart Fitness Tracker Band', 'FT-FB102', 49.00, 0, 'FALSE', 'Fitness'),
-- ('Limited Edition Comic Book Vol 1', 'BK-CB001', 15.00, 0, 'FALSE', 'Books'),
-- ('Winter Wool Trench Coat', 'AP-WC099', 160.00, 0, 'FALSE', 'Apparel');






SELECT name, price FROM  Products;


SELECT *  FROM  Products WHERE  category = 'Electronics';




SELECT category  FROM  Products  Group by  category ;




SELECT category ,count(*) FROM  Products Group by  category Having count(*) >=1;





SELECT * FROM Products;






