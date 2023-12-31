DROP DATABASE IF EXISTS employees_db;       -- Delete employees_db if it already exists
CREATE DATABASE employees_db;               -- Create employees_db

USE employees_db;                       

-- Create table for departments
CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, -- Auto-incrementing ID
    name VARCHAR(30) NOT NULL                   -- Department name (30 char max)
);

-- Create table for roles
CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,    
    department_id INT NOT NULL,
    FOREIGN KEY (department_id) REFERENCES department(id)
);

-- Create table for employees
CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT NOT NULL,
    manager_id INT,
    FOREIGN KEY (role_id) REFERENCES role(id),
    FOREIGN KEY (manager_id) REFERENCES employee(id)
);