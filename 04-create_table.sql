

CREATE TABLE IF NOT EXISTS store.categories (
    id INTEGER,
    name TEXT
);

CREATE TABLE IF NOT EXISTS store.products (
    id INTEGER,
    category_id INTEGER ,
    name TEXT,
    price NUMERIC 
);