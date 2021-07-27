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
    salary DECIMAL(7),

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

    -- Integer to hold manager employee id, may be null --
    manager_id INTEGER,
    FOREIGN KEY(manager_id) REFERENCES employee(id),

    -- Set employee table primary key --
    PRIMARY KEY (id)
);

-- Insert sample department data --
    INSERT INTO department (name)
    VALUES ("Engineering");

    INSERT INTO department (name)
    VALUES ("Finance");

    INSERT INTO department (name)
    VALUES ("Legal");

    INSERT INTO department (name)
    VALUES ("Sales");

-- Insert sample role data --
    INSERT INTO role (title, salary, department_id)
    VALUES ("Lead Engineer", 150000, 1);

    INSERT INTO role (title, salary, department_id)
    VALUES ("Software Engineer", 120000, 1);

    INSERT INTO role (title, salary, department_id)
    VALUES ("Accountant", 125000, 2);

    INSERT INTO role (title, salary, department_id)
    VALUES ("Legal Team Lead", 250000, 3);

    INSERT INTO role (title, salary, department_id)
    VALUES ("Lawyer", 190000, 3);

    INSERT INTO role (title, salary, department_id)
    VALUES ("Sales Lead", 100000, 4);

    INSERT INTO role (title, salary, department_id)
    VALUES ("Sales Person", 80000, 4);

-- Insert sample employee data --
    INSERT INTO employee (first_name, last_name, role_id, manager_id)
    VALUES ("Ashley", "Rodriguez", 1, NULL);

    INSERT INTO employee (first_name, last_name, role_id, manager_id)
    VALUES ("John", "Doe", 6, 1);

    INSERT INTO employee (first_name, last_name, role_id, manager_id)
    VALUES ("Mike", "Chan", 7, 2);

    INSERT INTO employee (first_name, last_name, role_id, manager_id)
    VALUES ("Kevin", "Tupik", 2, 1);

    INSERT INTO employee (first_name, last_name, role_id, manager_id)
    VALUES ("Malia", "Brown", 3, NULL);

    INSERT INTO employee (first_name, last_name, role_id, manager_id)
    VALUES ("Sarah", "Lourd", 4, NULL);

    INSERT INTO employee (first_name, last_name, role_id, manager_id)
    VALUES ("Tom", "Allen", 5, 7);

    INSERT INTO employee (first_name, last_name, role_id, manager_id)
    VALUES ("Christian", "Eckenrode", 1, 3);

    -- Test Queries (Select) --
    SELECT * FROM employee_db.department;
    SELECT * FROM employee_db.employee;
    SELECT * FROM employee_db.role;

    -- Test Queries (Add) --

    -- Test Queries (View) --

    -- Test Queries (Update) --

    -- Test Queries (Delete) --

    -- Test Queries (Calculated) --