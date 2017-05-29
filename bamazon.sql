CREATE DATABASE Bamazon;

USE Bamazon;

CREATE TABLE products (
    item_id INTEGER(5) AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    department_name VARCHAR(255) NOT NULL,
    price DECIMAL(11,2) NOT NULL,
    stock_quantity INTEGER NOT NULL
);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Soony 42inch 4k tv','TV & Video', 599.99 , 50 );

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('iPone 9+ (100% ORIGINAL!)','Cell Phones & Accessories',249.99,100);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Armaani Code By Joe Armaani For Men 1.7 Oz.', "Men's grooming" , 24.99 ,230);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Beets Solo3 Wireless On-Ear Headphones','Headphones',99.99,150);

INSERT INTO products (product_name , department_name, price, stock_quantity)
VALUES ('Ubuntu 10 Bro', 'Software', 9.99 , 999);

INSERT INTO products (product_name, department_name, price ,stock_quantity)
VALUES ('NoVirus Pro (NSA Approved)', 'Software', 15.99, 999 );

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Boomstick (Double-barrelled rifle) Ash Signature Edition','Firearms', 200, 15);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Mona Lisa painting (100% Original!)', 'Fine Art', 999.99, 2);

INSERT INTO products (product_name, department_name , price, stock_quantity)
VALUES ('Chewbacca rug (Ultra soft)', 'Home', 300, 50);

INSERT INTO products (product_name, department_name, price, stock_quantity)
VALUES ('Shaman drum (Indispensable tool for rain summoning and node.js debugging)', 'Spiritual Care', 59.99, 450);