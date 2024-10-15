create database  Ecommerce;

use Ecommerce;

CREATE TABLE customer (
customer_id varchar(10) NOT NULL,
name varchar(100) NOT NULL,
city varchar(65) NOT NULL,
email varchar(45) NOT NULL,
phone_no varchar(15) NOT NULL,
address varchar(100) NOT NULL,
pin_code int NOT NULL,
PRIMARY KEY (customer_id)
);

CREATE TABLE product(
product_id varchar(10) NOT NULL,
product_name varchar(100) NOT NULL,
category varchar(65) NOT NULL,
sub_category varchar(45) NOT NULL,
original_price double NOT NULL,
selling_price double NOT NULL,
stock int NOT NULL,
PRIMARY KEY (product_id)
);


CREATE TABLE order_details (
  order_id int NOT NULL AUTO_INCREMENT,
  customer_id varchar(10) NOT NULL,
  product_id varchar(10) NOT NULL,
  quantity double NOT NULL,
  total_price double NOT NULL,
  payment_mode varchar(60) NOT NULL,
  order_date datetime DEFAULT NULL,
  order_status varchar(20) NOT NULL,
  PRIMARY KEY (order_id),
  KEY customer_id (customer_id),
  KEY product_id (product_id),
  CONSTRAINT order_details_ibfk_1 FOREIGN KEY (customer_id)
  REFERENCES customer (customer_id),
  CONSTRAINT order_details_ibfk_2 FOREIGN KEY (product_id)
  REFERENCES product (product_id)
);


INSERT INTO customer (customer_id, name, city, email, phone_no, address, pin_code) VALUES
('C1001', 'Steve', 'Tokyo', 'steve@gmail.com', '4567897652', 'f.g.road', 99),
('C1002', 'John', 'Sydney', 'john@gmail.com', '9987234567', 'k.c.road', 75001),
('C1003', 'Peter', 'Kanagawa', 'peter.parker@mail.com', '9969834567', '2F Ikenobecho', 171),
('C1004', 'Jackson', 'Tokyo', 'Jackson@gmail.com', '7765834567', '24-2. Sendagaya', 8429),
('C1005', 'Jack', 'Lake Buena Vista', 'Jack@gmail.com', '8876345678', '1520 E Buena Vista Drive', 32830),
('C1006', 'Lisa', 'New York', 'lisa@gmail.com', '4567891234', 'Broadway St.', 10001),
('C1007', 'Paul', 'London', 'paul@gmail.com', '9897233456', 'Baker St.', 75501),
('C1008', 'Nina', 'Paris', 'nina.paris@mail.com', '7769881234', 'Champs-Élysées', 75008),
('C1009', 'Michael', 'Berlin', 'michael.b@gmail.com', '7885941234', 'Alexanderplatz', 10178),
('C1010', 'Sara', 'Rome', 'sara.rome@gmail.com', '6655832345', 'Via Condotti', 00187),
('C1011', 'Chris', 'San Francisco', 'chris.sf@gmail.com', '9867834444', 'Mission St.', 94103),
('C1012', 'Anna', 'Dubai', 'anna.dubai@gmail.com', '9874564321', 'Jumeirah Beach', 12345),
('C1013', 'Tom', 'Singapore', 'tom.sg@gmail.com', '6677823445', 'Orchard Rd.', 238858),
('C1014', 'Leo', 'Melbourne', 'leo.mel@gmail.com', '8887345678', 'Collins St.', 3000),
('C1015', 'Zara', 'Mumbai', 'zara.mumbai@gmail.com', '7766433456', 'Marine Drive', 400020);

INSERT INTO product (product_id, product_name, category, sub_category, original_price, selling_price, stock) VALUES
('P102', 'Chair', 'furniture', 'Chairs', 20000.0, 15000.00, 10),
('P103', 'Laptop', 'Electronics', 'computer', 60000.0, 55000.00, 50),
('P104', 'Smartphone', 'Electronics', 'phone', 45000.0, 40000.00, 20),
('P105', 'Blender', 'Appliance', 'Electronics', 500.0, 450.00, 10),
('P106', 'Laptop HP', 'Electronics', 'Computers', 67200.0, 55000.99, 50),
('P107', 'TV', 'Electronics', 'Home Appliances', 45000.0, 40000.00, 15),
('P108', 'Refrigerator', 'Appliance', 'Kitchen', 35000.0, 32000.00, 8),
('P109', 'Washing Machine', 'Appliance', 'Home Appliances', 25000.0, 23000.00, 12),
('P110', 'Microwave', 'Appliance', 'Kitchen', 8000.0, 7500.00, 20),
('P111', 'Air Conditioner', 'Appliance', 'Home Appliances', 50000.0, 47000.00, 5),
('P112', 'Speakers', 'Electronics', 'Audio', 12000.0, 11000.00, 25),
('P113', 'Camera Lens', 'Electronics', 'Photography', 15000.0, 13500.00, 10),
('P114', 'Smart TV', 'Electronics', 'Home Appliances', 60000.0, 55000.00, 10),
('P115', 'Gaming Console', 'Electronics', 'Entertainment', 40000.0, 38000.00, 7),
('P116', 'Coffee Maker', 'Appliance', 'Kitchen', 6000.0, 5500.00, 30);

INSERT INTO order_details (order_id, customer_id, product_id, quantity, total_price, payment_mode, order_date, order_status) VALUES
(1, 'C1001', 'P102', 1, 15000.0, 'COD', '2023-11-30', 'Pending'),
(2, 'C1002', 'P102', 1, 15000.0, 'COD', '2023-11-30', 'Pending'),
(3, 'C1003', 'P102', 1, 15000.0, 'COD', '2023-12-08', 'Delivered'),
(4, 'C1004', 'P103', 1, 55000.0, 'COD', '2023-12-15', 'Delivered'),
(5, 'C1005', 'P102', 1, 15000.0, 'COD', '2023-12-01', 'Delivered'),
(6, 'C1006', 'P104', 2, 80000.0, 'Credit Card', '2023-12-02', 'Delivered'),
(7, 'C1007', 'P105', 3, 1350.0, 'COD', '2023-12-03', 'Pending'),
(8, 'C1008', 'P106', 1, 55000.99, 'Credit Card', '2023-12-03', 'Delivered'),
(9, 'C1009', 'P107', 1, 40000.0, 'Debit Card', '2023-12-04', 'Shipped'),
(10, 'C1010', 'P108', 1, 32000.0, 'COD', '2023-12-05', 'Processing'),
(11, 'C1011', 'P109', 2, 46000.0, 'PayPal', '2023-12-06', 'Delivered'),
(12, 'C1012', 'P110', 1, 7500.0, 'Credit Card', '2023-12-06', 'Shipped'),
(13, 'C1013', 'P111', 1, 47000.0, 'COD', '2023-12-07', 'Processing'),
(14, 'C1014', 'P112', 1, 11000.0, 'Debit Card', '2023-12-08', 'Shipped'),
(15, 'C1015', 'P113', 2, 27000.0, 'PayPal', '2023-12-08', 'Delivered');






