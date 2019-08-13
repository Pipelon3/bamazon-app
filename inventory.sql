DROP DATABASE IF EXISTS Bamazon_inventory;
CREATE DATABASE Bamazon_inventory;

USE Bamazon_inventory;

CREATE TABLE products (
    id INT AUTO_INCREMENT not null;
    item_id INT not null;
    product_name varchar(50) not null;
    department_name varchar(50);
    price INT() not null;
    stock_quantity INT() not null;
    PRIMARY KEY (id)
)

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES(1, 'Xbox One', "Electronics", 300, 10)

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES(2, "Playstation 4", "Electronics", 300, 10)

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES(3, "Xbox 360", "Electronics", 150, 10)

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES(4, "Playstation 3", "Electronics", 150, 10)

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES(5, "Orange", "Grocery", 5, 8)

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES(6, "Grapes", "Grocery", 3, 5)

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES(7, "Apple", "Grocery", 3, 52)

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES(8, "Pulp Fiction", "Movies",20, 3)

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES(9, "Jurrasic Park", "Movies", 10, 9)

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES(10, "Avatar", "Movies", 5, 20)

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES(11, "The Room", "Movies", 10, 3)

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES(12, "Twizzlers", "Grocery", 3, 8)

INSERT INTO products(item_id, product_name, department_name, price, stock_quantity)
VALUES(13, "Skittles", "Grocery", 3, 7)
