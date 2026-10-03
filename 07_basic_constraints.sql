


-- NoT Null  - column meh vlaue hona chaiya 



-- Unique - deuplicate values are not allowed in this column



-- check     - value in this column must satisfy a specific condition



CREATE TABLE IF NOT EXISTS store.products_validation_examples(
    product_name TEXT NOT NULL,
    sku TEXT UNIQUE,
    price NUMERIC CHECK (price >= 0)

);