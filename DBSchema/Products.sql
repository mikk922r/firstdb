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
    FOREIGN KEY (category_id) REFERENCES category(id),
    FOREIGN KEY (user_id) REFERENCES users(id)
);
