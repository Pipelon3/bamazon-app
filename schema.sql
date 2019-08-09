DROP DATABASE IF EXISTS bamazon;

create database bamazon;

use bamazon;
create table products(
item_ID varchar(100),
product_name varchar(100),
department_name varchar(100),
price varchar(100),
stock_quanity varchar(100)
)

insert into products (
item_ID,
product_name,
department_name,
price,
stock_quanity)
value ("001", "Xbox One", "Electronics", "299.99, "1000");

insert into products (
item_ID,
product_name,
department_name,
price,
stock_quanity)
value ("002", "Playstation 4", "Electronics", "299.99", "1000");

insert into products (
item_ID,
product_name,
department_name,
price,
stock_quanity)
value ("003", "Xbox 360", "Electronics", "149.99", "1000");

insert into products (
item_ID,
product_name,
department_name,
price,
stock_quanity)
value ("004", "Playstation 3", "Electronics", "149.99", "1000");

insert into products (
item_ID,
product_name,
department_name,
price,
stock_quanity)
value ("005", "Pulp Fiction", "Movies", "19.99", "500");

insert into products (
item_ID,
product_name,
department_name,
price,
stock_quanity)
value ("006", "Batman Begins", "Movies", "19.99", "500");

insert into products (
item_ID,
product_name,
department_name,
price,
stock_quanity)
value ("007", "Jurrasic Park", "Movies", "19.99", "500");

insert into products (
item_ID,
product_name,
department_name,
price,
stock_quanity)
value ("008", "Milk", "Food", "3.99", "800");

insert into products (
item_ID,
product_name,
department_name,
price,
stock_quanity)
value ("009", "Eggs", "Food", "1.99", "800");

insert into products (
item_ID,
product_name,
department_name,
price,
stock_quanity)
value ("010", "Oranges", "Food", "2.99", "800");

insert into products (
item_ID,
product_name,
department_name,
price,
stock_quanity)
value ("011", "Yogurt", "Food", "1.99", "800");

insert into products (
item_ID,
product_name,
department_name,
price,
stock_quanity)
value ("012", "Samsung Smart TV", "Electronics", "299.99", "200");

select * from products
