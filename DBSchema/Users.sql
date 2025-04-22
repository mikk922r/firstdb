-- @block Lav tabel til brugere
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    phone_code INTEGER,
    phone_number TEXT
);