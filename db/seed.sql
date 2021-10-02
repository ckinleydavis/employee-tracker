
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
    INSERT INTO employee (first_name, last_name, role_id)
    VALUES ("Ashley", "Rodriguez", 1);

    INSERT INTO employee (first_name, last_name, role_id)
    VALUES ("John", "Doe", 6 );

    INSERT INTO employee (first_name, last_name, role_id)
    VALUES ("Mike", "Chan", 7);

    INSERT INTO employee (first_name, last_name, role_id)
    VALUES ("Kevin", "Tupik", 2);

    INSERT INTO employee (first_name, last_name, role_id)
    VALUES ("Malia", "Brown", 3);

    INSERT INTO employee (first_name, last_name, role_id)
    VALUES ("Sarah", "Lourd", 4);

    INSERT INTO employee (first_name, last_name, role_id)
    VALUES ("Tom", "Allen", 5);

    INSERT INTO employee (first_name, last_name, role_id)
    VALUES ("Christian", "Eckenrode", 1);



    -- Test Queries (Add) --

    -- Test Queries (View) --

    -- Test Queries (Update) --

    -- Test Queries (Delete) --

    -- Test Queries (Calculated) --