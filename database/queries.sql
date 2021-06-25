-- Queries go here

--Retrieve the first name, last name, and email address of all customers that have a Gmail email address.
SELECT first_name, last_name, email
FROM customers
WHERE email ILIKE '%gmail.com%';

--Retrieve the address of the customers and the order IDs for all orders that were placed in 2020
SELECT C.address, O.id, O.order_time
FROM customers AS C
JOIN orders AS O ON C.id = O.customer_id
WHERE EXTRACT(YEAR FROM order_time) = '2020';

--Retrieve all product details for products that are under the "Kitchen" category
SELECT CA.category_name AS category_name, products.id, name, price
FROM products
JOIN categories AS CA ON products.id = CA.product_id
WHERE CA.category_name = 'Kitchen';

--Retrieve the product names and prices of all products ordered by the customer with first name "Bugs" and last name "Bunny"
SELECT C.first_name, C.last_name,name AS product_name, price
FROM products
JOIN products_orders ON products_orders.product_id = products.id
JOIN orders ON orders.id = products_orders.order_id
JOIN customers AS C ON C.id = orders.customer_id
WHERE C.first_name = 'Bugs' AND C.last_name = 'Bunny';