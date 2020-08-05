CREATE TABLE person 
( person_id SERIAL PRIMARY KEY,
  name VARCHAR(200), age INTEGER, height INTEGER, city VARCHAR(200), favorite_color VARCHAR(200) )

  INSERT INTO person (name, age, height, city, favorite_color ) VALUES ('NOLAN BEYER', 25, 182, 'ALBANY', 'YELLOW' )
  INSERT INTO person (name, age, height, city, favorite_color ) VALUES ('RYAN MILNE', 24, 187, 'ALPINE', 'GREEN' )
  INSERT INTO person (name, age, height, city, favorite_color ) VALUES ('SAM CHIN', 28, 167, 'DALLAS', 'RED' )
  INSERT INTO person (name, age, height, city, favorite_color ) VALUES ('KEATON BRAITHWAITE', 30, 172, 'SALT LAKE', 'ORANGE' )
  INSERT INTO person (name, age, height, city, favorite_color ) VALUES ('AUSTIN CARLY', 27, 177, 'BOULDER', 'BLUE' )


  SELECT * FROM person ORDER BY height DESC

  SELECT * FROM person ORDER BY height ASC

  SELECT * FROM person ORDER BY age DESC

  SELECT * FROM person WHERE age > 20

  SELECT * FROM person WHERE age = 18

  SELECT * FROM person WHERE age < 20 OR age > 30

  SELECT * FROM person WHERE age != 27

  SELECT * FROM person WHERE favorite_color != 'RED'

  SELECT * FROM PERSON WHERE favorite_color != 'RED' AND favorite_color != 'BLUE'

  SELECT * FROM person WHERE favorite_color = 'ORANGE' OR favorite_color = 'GREEN'

  SELECT * FROM person WHERE favorite_color IN ('ORANGE', 'GREEN', 'BLUE')

  SELECT * FROM person WHERE favorite_color IN ( 'YELLOW', 'PURPLE')


CREATE TABLE orders ( order_id SERIAL PRIMARY KEY, person_id INTEGER, product_name VARCHAR(200), priduct_price NUMERIC, quantity INTEGER )

INSERT INTO orders ( person_id, product_name, product_price, quantity ) VALUES (0, 'BREAD', 5.50, 1)

INSERT INTO orders ( person_id, product_name, product_price, quantity ) VALUES ( 1, 'MILK', 3.0, 2 )

SELECT * FROM orders

SELECT SUM(quantity) FROM orders

SELECT SUM(product_price * quantity) FROM orders

SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 0


INSERT INTO artist ( name ) VALUES ( 'THE NBHD' )
INSERT INTO artist ( name ) VALUES ( 'SIR SLY')
INSERT INTO artist ( name ) VALUES ( 'FOSTER THE PEOPLE' )

SELECT * FROM artist ORDER BY name DESC LIMIT 10 

SELECT * FROM artist ORDER BY NAME ASC LIMIT 5

SELECT * FROM artist WHERE name LIKE 'Black%'

SELECT * FROM artist WHERE name LIKE '%Black%'



SELECT first_name, last_name FROM employee WHERE city = 'Calgary'
SELECT MAX(birthdate) FROM employee
SELECT MIN(birthdate) FROM employee
SELECT * FROM employee WHERE reports_to = 2
SELECT COUNT(*) FROM employee WHERE city = 'Lenthbridge'


SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA'
SELECT MAX(total) FROM invoice
SELECT MIN(total) FROM invoice
SELECT COUNT(*) FROM invoice WHERE total > 5
SELECT COUNT(*) FROM invoice WHERE total < 5
SELECT COUNT(*) FROM invoice WHERE billin_state IN ('CA', 'TX', 'AZ')
SELECT AVG(total) FROM invoice
SELECT SUM(total) FROM invoice