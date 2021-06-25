-- Schema creation goes here
--customer, product, category, and order
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS products_orders CASCADE;

--first name, last name, and email address of all customers that have a Gmail email address.
CREATE TABLE customers(
    id serial PRIMARY KEY,
    first_name varchar (60) NOT NULL,
    last_name varchar (60) NOT NULL,
    email varchar (120),
    address varchar (200) NOT NULL
);

CREATE TABLE orders(
    id serial PRIMARY KEY,
    customer_id integer REFERENCES customers(id),
    order_time date NOT NULL
);

CREATE TABLE products(
    id serial PRIMARY KEY,
    name varchar (60) NOT NULL,
    price integer NOT NULL
);

CREATE TABLE products_orders(
    id serial PRIMARY KEY,
    order_id integer REFERENCES orders(id),
    product_id integer REFERENCES products(id),
    quantity integer NOT NULL
);

CREATE TABLE categories(
    id serial PRIMARY KEY,
    category_name varchar (60) NOT NULL,
    product_id integer REFERENCES products(id)
);