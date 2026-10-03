



-- CREATE TABLE IF NOT EXISTS  store.users(
--     id INTEGER PRIMARY KEY,
--     email TEXT UNIQUE,
--     name TEXT
-- );

-- INSERT INTO store.users (id , email, name)
-- VALUES (1, 'dev@gmail.com' , 'dev');



--  NO conflict = iNSERT
--  Conflict = UPSESRT

-- INSERT INTO store.users (id , email, name)
-- VALUES (2, 'dev@gmail.com' , 'dev backend')
-- ON CONFLICT (email)

-- DO UPDATE SET 
--      name = EXCLUDED.name 
--      RETURNING * ;




     SELECT * FROM  store.users;