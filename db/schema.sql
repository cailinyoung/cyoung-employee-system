DROP DATABASE IF EXISTS employee_trackerDB;

-- creating database --
CREATE DATABASE employee_trackerDB;
USE employee_trackerDB;

-- department table --
CREATE TABLE department (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) 
        
);

-- role table --
CREATE TABLE role (
    role_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT(10),
    FOREIGN KEY (department_id) REFERENCES department(department_id) ON DELETE CASCADE
    
);

-- employee table -- 
CREATE TABLE employee (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT(10),
    manager_id INT(10), 
    FOREIGN KEY (role_id) REFERENCES role (role_id) ON DELETE CASCADE,
    FOREIGN KEY (manager_id) REFERENCES employee (employee_id) ON DELETE SET NULL

);

-- role seeds (From GIF) --
INSERT INTO role (title, salary, department_id)
VALUES
    ("Sales Lead", 100000, 1),
    ("Salesperson", 80000, 1),
    ("Lead Engineer", 150000, 2),
    ("Software Engineer", 120000, 2),
    
    --   department seeds (From GIF)--
    INSERT INTO department (department)
    VALUES
        ("Sales"),
        ("Engineering"),
        ("Finance"),
        ("Legal");
    
    -- role seeds (From GIF) --
    INSERT INTO role (title, salary, department_id)
    VALUES
        ("Sales Lead", 100000, 1),
        ("Salesperson", 80000, 1),
        ("Lead Engineer", 150000, 2),
        ("Software Engineer", 120000, 2),
        ("Accountant", 125000, 3),
        ("Legal Team Lead", 250000, 4),
        ("Lawyer", 190000, 4);
    
    -- employee seeds (From GIF) --
    INSERT INTO employee (first_name, last_name, role_id)
    VALUES
        ("John", "Doe", 1),
        ("Mike", "Chan", 2),
        ("Ashley", "Rodriguez", 3),
        ("Kevin", "Tupik", 4),
        ("Jane", "Smith", 5),
        ("Malia", "Brown", 5),
        ("Sarah", "Lourd", 6),
        ("Tom", "Allen", 7),
        ("Christian", "Eckenrode", 3),
        ("Tammer", "Galal", 4);
    
