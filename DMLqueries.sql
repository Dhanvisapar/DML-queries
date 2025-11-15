
use DML;
-- Create sample table
CREATE TABLE employee (id INTEGER PRIMARY KEY, name TEXT NOT NULL, email TEXT,
    salary REAL DEFAULT 0,
    department TEXT
);

-- INSERT values (with NULL handling)
INSERT INTO employees (id, name, email, salary, department)
VALUES (1, 'Aarav', NULL, 45000, 'HR');

-- Partial insert (missing columns → becomes NULL or DEFAULT)
INSERT INTO employees (id, name, salary)
VALUES (2, 'Meera', 52000);

INSERT INTO employees (id, name)
VALUES (3, 'Rohit');   -- salary defaults to 0

-- UPDATE rows
UPDATE employees SET salary = 60000 WHERE id = 2;

UPDATE employees SET department = 'Finances' WHERE department IS NULL;

-- DELETE with condition
DELETE FROM employees WHERE id = 1;

-- DELETE rows with NULL email
DELETE FROM employees WHERE email IS NULL;

