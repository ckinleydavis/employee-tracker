-- Drop employee_db if one already exists --
DROP DATABASE IF EXISTS employee_db;

-- Create "employee_db" database --
CREATE DATABASE employee_db;

-- Set the following code to use the employee_db --
USE employee_db;

-- Create the Department table --
CREATE TABLE department (
    -- Primary Key --
    id INTEGER NOT NULL AUTO_INCREMENT,

    -- String to hold the department name --
    name VARCHAR(30) NOT NULL,

    -- Set department table primary key --
    PRIMARY KEY (id)
);

-- Create the Role table -- 
CREATE TABLE role (
    -- Primary Key --
    id INTEGER NOT NULL AUTO_INCREMENT,

    -- String to hold role title --
    title VARCHAR(30) NOT NULL,

    -- Decimal to hold role salary --
    salary INTEGER NOT NULL,

    -- Integer to hold department Foreign Key --
    department_id INTEGER NOT NULL,
    FOREIGN KEY(department_id) REFERENCES department(id),

    -- Set role table primary key --
    PRIMARY KEY (id)
);

-- Create the Employee table --
CREATE TABLE employee (
    -- Primary Key --
    id INTEGER NOT NULL AUTO_INCREMENT,

    -- String to hold the employee first name --
    first_name VARCHAR(30) NOT NULL,

    -- String to hold the employee last name --
    last_name VARCHAR(30) NOT NULL,

    -- Integer to hold the role id Foreign Key --
    role_id INTEGER NOT NULL,
    FOREIGN KEY(role_id) REFERENCES role(id),

    -- Set employee table primary key --
    PRIMARY KEY (id)
);