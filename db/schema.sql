DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;
USE employee_db;

CREATE TABLE department
(
        id INT
        AUTO_INCREMENT NOT NULL PRIMARY KEY, 
        name VARCHAR
        (30) 
);

        CREATE TABLE role
        (
                id INT
                AUTO_INCREMENT NOT NULL PRIMARY KEY,
        title VARCHAR
                (30),
        salary DECIMAL
                (10,2),
        department_id INT NOT NULL, FOREIGN KEY
                (department_id) REFERENCES department
                (id)
);

                CREATE TABLE employee
                (
                        id INT
                        AUTO_INCREMENT NOT NULL PRIMARY KEY,
        first_name VARCHAR
                        (30) NOT NULL,
        last_name VARCHAR
                        (30) NOT NULL,
        role_id INT NOT NULL, FOREIGN KEY
                        (role_id) REFERENCES role
                        (id),
        manager_id INT, FOREIGN KEY
                        (manager_id) REFERENCES employee
                        (id)
);