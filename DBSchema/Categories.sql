-- @block Lav tabel til kategorier
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name TEXT,
    parent_category_id INTEGER,
    FOREIGN KEY (parent_category_id) REFERENCES categories(id) ON DELETE CASCADE
);

-- @block Indsæt hovedkategorier
INSERT INTO categories (name) VALUES
('Mænd'),
('Kvinder'),
('Børn'),
('Tilbehør'),
('Fodtøj'),
('Sportstøj'),
('Ydertøj'),
('Formelt Tøj'),
('Casual Tøj'),
('Nattøj'),
('Badetøj'),
('Aktivtøj'),
('Vintage'),
('Luksus');

-- @block Indsæt underkategorier
INSERT INTO categories (name, parent_category_id) VALUES
-- Mænd (1)
('T-shirts', 1),
('Skjorter', 1),
('Jeans', 1),
('Bukser', 1),
('Skræddersyede jakkesæt', 1),
('Sweatre', 1),
('Jakker', 1),

-- Kvinder (2)
('Kjoler', 2),
('Toppe', 2),
('Nederdele', 2),
('Jeans', 2),
('Bukser', 2),
('Bluser', 2),
('Sweatre', 2),
('Jakker', 2),

-- Børn (3)
('Babytøj', 3),
('Småbørns tøj', 3),
('Drenge Toppe', 3),
('Drenge Bukser', 3),
('Pige Toppe', 3),
('Pige Bukser', 3),
('Skoleuniformer', 3),

-- Tilbehør (4)
('Bælter', 4),
('Hatte', 4),
('Halsduge', 4),
('Handsker', 4),
('Smykker', 4),
('Tasker', 4),
('Solsikker', 4),

-- Fodtøj (5)
('Sneakers', 5),
('Sandaler', 5),
('Festsko', 5),
('Støvler', 5),
('Sportssko', 5),
('Slippers', 5),

-- Sportstøj (6)
('Løbeudstyr', 6),
('Yoga Tøj', 6),
('Træningstøj', 6),
('Cykelbeklædning', 6),
('Sportstrøjer', 6),
('Svømmeudstyr', 6),

-- Ydertøj (7)
('Vinterjakker', 7),
('Regnjakker', 7),
('Vindjakker', 7),
('Parkacoater', 7),
('Veste', 7),

-- Formelt Tøj (8)
('Smoking', 8),
('Aftenkjoler', 8),
('Cocktailkjoler', 8),
('Skjorter', 8),
('Slips', 8),

-- Casual Tøj (9)
('Hættetrøjer', 9),
('Sweatshirts', 9),
('Shorts', 9),
('Casual Kjoler', 9),
('Polo T-shirts', 9),

-- Nattøj (10)
('Pyjamas', 10),
('Nattkjoler', 10),
('Kåber', 10),
('Sovetøj', 10),

-- Badetøj (11)
('Bikinier', 11),
('Heldragt Badedragter', 11),
('Svømmebukser', 11),
('Boardshorts', 11),
('Cover-ups', 11),

-- Aktivtøj (12)
('Leggings', 12),
('Sport-BH', 12),
('Performance Toppe', 12),
('Kompressionstøj', 12),
('Træningsshorts', 12),

-- Vintage (13)
('60''er Mode', 13),
('70''er Mode', 13),
('80''er Mode', 13),
('90''er Mode', 13),
('Retro Tilbehør', 13),

-- Luksus (14)
('Designerkjoler', 14),
('Designerskræddersyede jakkesæt', 14),
('Luksus Tilbehør', 14),
('High-end Fodtøj', 14),
('Premium Ydertøj', 14),

-- Bæredygtigt (15)
('Økologisk Bomuld', 15),
('Genbrugsmaterialer', 15),
('Fair Trade', 15),
('Øko-venligt Tilbehør', 15),
('Bæredygtigt Fodtøj', 15);