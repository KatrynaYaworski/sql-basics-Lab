-- 1 Count how many orders were made from the USA.
select count(*) from invoice where billing_country = 'USA';

-- 2 Find the largest order total amount.
select total from invoice ORDER BY total desc limit 1

-- 3 Find the smallest order total amount.
select total from invoice ORDER BY total asc limit 1

-- 4 Find all orders bigger than $5.
select * from invoice WHERE total > 5;

-- 5 Count how many orders were smaller than $5.
select count(*) from invoice WHERE total < 5;

-- 6 Count how many orders were in CA, TX, or AZ (use IN).
select count(*) from invoice where billing_state IN('CA', 'TX','AZ');

-- 7 Get the average total of the orders.
select avg(total) from invoice;

-- 8 Get the total sum of the orders.
select sum(total) from invoice;

-- 9 Update the invoice with an invoice_id of 5 to have a total order amount of 24.
UPDATE invoice
SET total = 24
WHERE invoice_id = 5;

-- 10 Delete the invoice with an invoice_id of 1.
DELETE 
FROM invoice_line
WHERE invoice_id = 1;

DELETE 
FROM invoice
WHERE invoice_id = 1;
