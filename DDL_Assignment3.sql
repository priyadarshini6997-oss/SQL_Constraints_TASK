CREATE DATABASE companyDB;
USE companyDB;

CREATE TABLE employees (
    id INT,
    name VARCHAR(100),
    salary DECIMAL(10,2),
    email VARCHAR(100),
    department VARCHAR(50),
    location VARCHAR(50)
);


ALTER TABLE employees
ADD CONSTRAINT pk_id PRIMARY KEY (id);
DESC employees;

ALTER TABLE employees
MODIFY name VARCHAR(100) NOT NULL;
DESC employees;

ALTER TABLE employees
MODIFY salary DECIMAL(10,2) DEFAULT 30000;
DESC employees;

ALTER TABLE employees
ADD CONSTRAINT unique_email UNIQUE (email);
DESC employees;

CREATE TABLE products (
    id INT,
    name VARCHAR(100),
    price DECIMAL(10,2)
);

ALTER TABLE products
ADD stock INT;
DESC products;

ALTER TABLE products
CHANGE price unit_price DECIMAL(10,2);
DESC products;



