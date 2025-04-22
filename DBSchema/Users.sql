-- @block Lav tabel til brugere
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    phone_code INTEGER,
    phone_number TEXT
);

-- @block Indsæt brugere
INSERT INTO users VALUES 
(1, 'Oliver', 'oliveragervig@gmail.com', 45, '29705200'),
(2, 'Mikkel', 'mikk922r@edu.mercantec.dk', 45, '25772277'),
(3, 'Nicolai', 'nicolaivikkelsoe@gmail.com', 45, '42502874');