-- Seed data goes here
INSERT INTO customers (id, first_name, last_name, email, address) VALUES (1, 'Bugs', 'Bunny', 'BB@gmail.com', '6232 Guiseppe Courts, Jamartown, Maryland, 49028');
INSERT INTO customers (id, first_name, last_name, email, address) VALUES (2, 'Elda', 'Sipes', 'eldas@gmail.com', '704 Cecil Mountain, West Jon, South Dakota, 91578');
INSERT INTO customers (id, first_name, last_name, email, address) VALUES (3, 'Jed', 'Kunde', 'jedk@yahoo.com', '41613 Huel Ranch, Loycefort, Florida, 12109');
INSERT INTO customers (id, first_name, last_name, email, address) VALUES (4, 'Leopold', 'Towne', 'leo1@wot.com','1397 Braden Shoals, New Karine, New York, 03913');
INSERT INTO customers (id, first_name, last_name, email, address) VALUES (5, 'Tianna', 'Lowe', 'tiannaL@momo.com', '1397 Braden Shoals, New Karine, New York, 03913');

INSERT INTO orders(id, customer_id, order_time) VALUES (1, 1, '2020-1-1');
INSERT INTO orders(id, customer_id, order_time) VALUES (2, 2, '2019-2-2');
INSERT INTO orders(id, customer_id, order_time) VALUES (3, 3, '2018-3-3');
INSERT INTO orders(id, customer_id, order_time) VALUES (4, 4, '2017-4-4');
INSERT INTO orders(id, customer_id, order_time) VALUES (5, 5, '2020-12-21');

INSERT INTO products(id, name, price) VALUES (1, 'kitchen knife', 20);
INSERT INTO products(id, name, price) VALUES (2, 'sauce pot', 29);
INSERT INTO products(id, name, price) VALUES (3, 'table', 233);
INSERT INTO products(id, name, price) VALUES (4, 'baseball', 6);
INSERT INTO products(id, name, price) VALUES (5, 'sofa', 555);
INSERT INTO products(id, name, price) VALUES (6, 'pc', 2099);

INSERT INTO products_orders(id, order_id, product_id, quantity) VALUES (1, 1, 1, 2);
INSERT INTO products_orders(id, order_id, product_id, quantity) VALUES (2, 1, 2, 1);
INSERT INTO products_orders(id, order_id, product_id, quantity) VALUES (3, 2, 3, 1);
INSERT INTO products_orders(id, order_id, product_id, quantity) VALUES (4, 3, 4, 3);
INSERT INTO products_orders(id, order_id, product_id, quantity) VALUES (5, 4, 5, 1);
INSERT INTO products_orders(id, order_id, product_id, quantity) VALUES (6, 5, 6, 1);

INSERT INTO categories(id, category_name, product_id) VALUES (1, 'Kitchen', 1);
INSERT INTO categories(id, category_name, product_id) VALUES (2, 'Kitchen', 2);
INSERT INTO categories(id, category_name, product_id) VALUES (3, 'Office', 3);
INSERT INTO categories(id, category_name, product_id) VALUES (4, 'Sports', 4);
INSERT INTO categories(id, category_name, product_id) VALUES (5, 'Office', 5);
INSERT INTO categories(id, category_name, product_id) VALUES (6, 'Electronics', 6);
