-- TABLE - person Assignment

CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    person_name VARCHAR(100),
    age INT,
    height INT,
    city VARCHAR(200),
    favorite_color VARCHAR(100)
);

INSERT INTO person 
(person_name, age, height, city, favorite_color)
VALUES 
('Hannah', 19, 162.56, 'South Jordan', 'Pink'),
('Miriam', 15, 150, 'South Jordan', 'Blue'),
('Grace', 13, 130, 'South Jordan', 'Cyan'),
('Eli', 12, 140, 'South Jordan', 'Pink'),
('Josh', 18, 180, 'South Jordan', 'Blue');

SELECT * FROM person ORDER BY height DESC;
SELECT * FROM person ORDER BY height;

SELECT * FROM person ORDER BY age;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'red';

SELECT * FROM person
WHERE favorite_color NOT IN ('Red', 'Blue');

SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green');

SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple');

-- Table - orders assignment

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INT,
    product_name VARCHAR(200),
    product_price INT,
    quantity INT
);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES
(0, 'drugs', 1000, 50),
(1, 'butter', 2.50, 1),
(2, 'cookies', 3.99, 1),
(3, 'Air Head Bites', 1.99, 2),
(4, 'iPhone 12', 999.99, 1);

SELECT * FROM orders;

SELECT sum(quantity) FROM orders;

SELECT sum(product_price * quantity) FROM orders;

SELECT sum(product_price * quantity) FROM orders
WHERE order_id = 1;

-- Table - artist
INSERT INTO artist (name)
VALUES
('Hannah'),
('Miriam'),
('Josh');

SELECT * FROM artist ORDER BY name DESC LIMIT 10;

SELECT * FROM artist ORDER BY name LIMIT 5;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

-- Table - employee
SELECT (first_name, last_name) FROM employee
WHERE city = 'Calgary';

SELECT max(birth_date) FROM employee;

SELECT min(birth_date) FROM employee;

SELECT employee_id FROM employee
WHERE first_name = 'Nancy' AND last_name = 'Edwards';

SELECT * FROM employee
WHERE reports_to = 2;

SELECT count(*) from employee
WHERE city = 'Lethbridge';

-- Table - invoice

SELECT count(*) FROM invoice
WHERE billing_country = 'USA';

SELECT max(total) FROM invoice;

SELECT min(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT count(*) FROM invoice
WHERE total < 5;

SELECT count(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT avg(total) FROM invoice;

SELECT sum(total) FROM invoice;