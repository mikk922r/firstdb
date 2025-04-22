-- @block Lav tabel til kategorier
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name TEXT
);

-- @block Indsæt kategorier
INSERT INTO categories VALUES 
(1, 'Trøjer'),
(2, 'Bukser'),
(3, 'Sko')