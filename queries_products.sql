-- Comments in SQL Start with dash-dash --
--1 to 3--
INSERT INTO products
    (name, price, can_be_returned)
VALUES
    ('chair', 44, false),
    ('stool', 25.99, true),
    ('table', 124, false);

--4--
SELECT * FROM products;

--5--
SELECT name FROM products;

--6--
SELECT name, price FROM products;

--7--
INSERT INTO products
    ('bed', 999.99, false);

--8-
SELECT * FROM products WHERE can_be_returned;

--9--
SELECT * FROM products WHERE price < 44;

--10--
SELECT * FROM products WHERE price BETWEEN 22.50 AND 99.99;

--11--
UPDATE products SET price = price - 20;

--12--
DELETE FROM products WHERE price < 25;

--13--
UPDATE products SET price = price + 20;

--14--
UPDATE products SET can_be_returned = 1;