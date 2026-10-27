CREATE TABLE IF NOT EXISTS Restaurant (
    name         TEXT,
    neighbourhood    TEXT,
    cuisine      TEXT,
    review       TEXT,
    price        TEXT,
    health       TEXT
);

INSERT INTO Restaurant (name, neighbourhood, cuisine, review, price, health)
VALUES
    ('Peter' ,  'Brooklyn', 'Steak',  '4.4', '₹₹₹₹', 'A'),
    ('Emma', 'Manhattan', 'Italian', '4.7', '₹₹₹', 'A'),
    ('James', 'Queens', 'Chinese', '4.2', '₹₹', 'B'),
    ('Sophia', 'Bronx', 'Mexican', '4.1', '₹₹', 'F----'),
    ('Oliver', 'Brooklyn', 'Japanese', '4.6', '₹₹₹₹', 'A'),
    ('Mia', 'Harlem', 'American', '4.3', '₹₹₹', 'A'),
    ('Lucas', 'Queens', 'Indian', '4.5', '₹₹', 'A'),
    ('Issabella', 'Manhattan', 'Italian', '4.7', '₹₹₹', 'A'),
    ('Ethan', 'Bronx', 'Pizza', '3.9', '₹', 'B'),
    ('Ava', 'Brooklyn', 'Thai', '4.4', '₹₹₹', 'A'),
    ('Noah', 'Harlem', 'Seafood', '4.2', '₹₹₹', 'F----');

-- 1
SELECT DISTINCT neighbourhood
FROM Restaurant;

-- 2
SELECT DISTINCT cuisine
FROM Restaurant;

-- 3
SELECT *
FROM Restaurant
WHERE cuisine = 'Italian';

-- 4
SELECT *
FROM Restaurant
WHERE review >= 4.0;

-- 5
SELECT *
FROM Restaurant
WHERE cuisine = Italian
    AND price IN ('₹₹', '₹₹₹');

-- 6
SELECT *
FROM Restaurant
WHERE price = '₹₹₹';

-- 7
SELECT *
FROM Restaurant
WHERE name LIKE 'James';

-- 8
SELECT *
FROM Restaurant
WHERE neighbour IN ('Midtown', 'Brooklyn', 'Queens';

SELECT *
FROM Restaurant
WHERE health = '' OR health IS NULL;

SELECT *
FROM Restaurant
ORDER BY review DESC
LIMIT 4;