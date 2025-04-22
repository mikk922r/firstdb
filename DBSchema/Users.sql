-- @block Lav tabel til brugere
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    phone_code INTEGER,
    phone_number TEXT
);
-- @block 
INSERT INTO users (name, email, phone_code, phone_number) VALUES ('Oliver', 'oliveragervig@gmail.com', 45, '29705200');

SELECT * FROM users;


