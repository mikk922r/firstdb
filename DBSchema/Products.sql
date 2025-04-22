-- @block Lav tabel til produkter
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name TEXT,
    description TEXT,
    price NUMERIC(10, 2),
    color TEXT,
    size TEXT,
    quantity INTEGER,
    used BOOLEAN,
    brand_id INTEGER NOT NULL,
    category_id INTEGER NOT NULL,
    user_id INTEGER,
    FOREIGN KEY (brand_id) REFERENCES brands(id),
    FOREIGN KEY (category_id) REFERENCES categories(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);

-- @block View til at få alle produkter med brandnavn, kategorinavn og brugernavn (hvis user_id er sat og brugeren findes)
CREATE VIEW get_products_with_names AS 
SELECT 
    p.id, 
    p.name,
    p.description,
    p.price,
    p.color,
    p.size,
    p.quantity,
    p.used,
    b.name AS brand_name,
    c.name AS category_name,
    u.name AS user_name
FROM 
    products p
    JOIN brands b ON b.id = p.brand_id
    JOIN categories c ON c.id = p.category_id
    LEFT JOIN users u ON u.id = p.user_id

-- @block Test view
SELECT * FROM get_products_with_names;