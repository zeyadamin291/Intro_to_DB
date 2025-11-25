CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE Books(
book_id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(130) NOT NULL,
author_id INT NOT NULL UNIQUE,
FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

CREATE TABLE Authors(
author_id INT PRIMARY KEY AUTO_INCREMENT,
author_name VARCHAR(215) NOT NULL
); 

CREATE TABLE Customers(
customer_id INT PRIMARY KEY AUTO_INCREMENT,
customer_name VARCHAR(215) NOT NULL,
email VARCHAR(215) NOT NULL,
address TEXT 
);

CREATE TABLE Orders(
order_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT UNIQUE,
FOREIGN KEY(customer_id) REFERENCES Customers(customer_id),
order_date DATE 
);

CREATE TABLE Order_Details(
orderdetailid INT PRIMARY KEY AUTO_INCREMENT,
order_id INT UNIQUE,
FOREIGN KEY (order_id) REFERENCES Orders(order_id),
book_id INT UNIQUE,
FOREIGN KEY (book_id) REFERENCES Books(book_id),
quantity DOUBLE
);
