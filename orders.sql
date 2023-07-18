-- 1 Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
create TABLE orders (
	order_id SERIAL,
  	person_id VARCHAR(100) PRIMARY KEY,
  	product_name VARCHAR(100) NOT NULL,
  	product_price FLOAT,
  	quantity INTEGER
)
-- 2 Add 5 orders to the orders table.
--   A) Make orders for at least two different people.
--   B) person_id should be different for different people.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES ('Katryna','Burger', 23.99, 3),
('Garrett','Chips', 5.99, 5);

-- 3 Select all the records from the orders table.
select * FROM orders;

-- 4 Calculate the total number of products ordered.
select sum(quantity) FROM orders;

-- 5 Calculate the total order price.
select sum(product_price * quantity) FROM orders

-- 6 Calculate the total order price by a single person_id.
select person_id, sum(product_price * quantity) FROM orders GROUP BY person_id;