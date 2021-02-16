-- use this schema file --
USE employee_trackerDB;

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
    
    