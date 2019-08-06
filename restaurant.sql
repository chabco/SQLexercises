CREATE TABLE restaurant (
name VARCHAR,
distance INTEGER,
stars INTEGER,
category VARCHAR,
favorite_dish VARCHAR,
takeout BOOLEAN,
last_time VARCHAR
);

INSERT INTO restaurant VALUES (
	'Truetts', 4, 5, 'sandwiches', 'chicken breast', TRUE, '03/05/1992'
);

INSERT INTO restaurant VALUES (
	'Diner', 2, 3, 'soup', 'tomato', FALSE, '07/04/2001'
);

INSERT INTO restaurant VALUES (
	'Cats', 6, 1, 'rice', 'fried rice', TRUE, '08/05/2019'
);

INSERT INTO restaurant VALUES (
	'Gross', 7, 5, 'burgers', 'fries', TRUE, '01/09/1995'
);

SELECT name FROM restaurant WHERE stars = 5;
SELECT favorite_dish FROM restaurant WHERE stars = 5;
SELECT id from restaurant WHERE name = 'Cats';
SELECT name from restaurant WHERE category = 'BBQ';
SELECT name from restaurant WHERE takeout = TRUE;
SELECT name from restaurant WHERE takeout = TRUE and category = 'BBQ';
SELECT name from restaurant WHERE distance < 6;
SELECT name from restaurant WHERE last_time between '08/01/2019' and '08/06/2019';
SELECT name from restaurant WHERE last_time not between '08/01/2019' and '08/06/2019';
SELECT name from restaurant WHERE last_time not between '08/01/2019' and '08/06/2019' and stars = 5;


SELECT name from restaurant ORDER BY distance asc;
SELECT name, distance from restaurant ORDER BY distance asc LIMIT 2;
SELECT name, stars from restaurant WHERE distance < 6 ORDER BY stars asc LIMIT 2;
SELECT COUNT(name) from restaurant;
SELECT AVG(stars) from restaurant;
SELECT category, MAX(stars) from restaurant group by category;


UPDATE restaurant SET category = 'BBQ' WHERE name = 'Diner';
UPDATE restaurant SET takeout = TRUE WHERE name = 'Diner';

ALTER TABLE restaurant
ADD id SERIAL NOT NULL PRIMARY KEY;

DELETE FROM restaurant;
DROP TABLE restaurant;

select * from restaurant;