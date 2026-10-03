

-- data types postgres what kind of data

--INTEGER - stores whole numbers 2,3,13,43
--NUMERIC - stores decimal numbers 2.3, 3.14, 43.12
--TEXT - stores text or string data 'hello', 'world', 'postgres'
--BOOLEAN - stores true or false values
--DATE - stores date values '2021-01-01', '2022-12-31'
-- TIMESTAMP - stores date and time values '2021-01-01 12:00:00', '2022-12-31 23:59:59'


CREATE TABLE IF NOT EXISTS store.products_details (
    id INTEGER,
    name TEXT,
    price NUMERIC(10,2),
    stock INTEGER,
    is_active BOOLEAN,
    lunch_date DATE,
    created_at TIMESTAMP
);