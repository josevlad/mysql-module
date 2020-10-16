DROP DATABASE IF EXISTS Laboratory;

CREATE DATABASE IF NOT EXISTS Laboratory;

USE Laboratory;

CREATE TABLE IF NOT EXISTS Article (
	id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    price DOUBLE NOT NULL DEFAULT 0,
    stock INT NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS Invoice (
	id INT AUTO_INCREMENT,
    letter CHAR NOT NULL,
    number INT(5) NOT NULL,
    date DATE NOT NULL,
    amount INTEGER NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS Client (
	id INT AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    cuit CHAR(16) NOT NULL,
    address VARCHAR(100) NOT NULL,
    comments LONGTEXT,
    PRIMARY KEY(id)
);

INSERT INTO Article (name, price, stock) 
VALUES
	('Cinta', 110, 50),
	('Espatula', 20, 22),
	('Fratas', 35, 28),
    ('Regla', 20, 78),
	('Tenaza', 12, 13);
    
INSERT INTO Invoice (letter, number, date, amount) 
VALUES
	('B', LPAD(1, 5, 0), '2011-11-18', 500),
	('B', LPAD(2, 5, 0), '2012-09-25', 200),
	('B', LPAD(3, 5, 0), '2011-01-01', 3020),
    ('B', LPAD(4, 5, 0), '2016-11-18', 1200),
	('B', LPAD(5, 5, 0), curdate(), 3300);

-- TRUNCATE Client;
INSERT INTO Client (name, last_name, cuit, address) 
VALUES
	('Mario', 'Perez', '20-14987008-8', 'Aguero 635'),
	('Jorge', 'Rios', '20-37562854-5', 'Nazca 1532'),
	('Valeria', 'Lagos', '20-25487418-8', 'Chipre 5'),
    ('Natalia', 'Peña', '20-25982665-2', 'Jufre 3651'),
	('Juan', 'Khorn', '20-23587171-9', 'Belgrano 6525');




















-- SELECT * FROM Article WHERE price > 100;
-- SELECT * FROM Article WHERE (price >= 20 AND price <= 40);
-- SELECT * FROM Article WHERE price BETWEEN 20 AND 40;
-- SELECT * FROM Article WHERE price = 20 AND stock > 30;

-- SELECT * FROM Article ORDER BY price ASC, name;
-- SELECT *, round(price*1.12, 2) AS 'price + iva' FROM Article;
-- SELECT *, 3 AS 'cantidad de cuotas', round((price*1.12*1.05)/3, 2) AS 'valor de cuota' FROM Article;

-- 4 y 5


