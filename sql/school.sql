CREATE DATABASE IF NOT EXISTS school;
USE school;

CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    enrolled_on DATE NOT NULL
);

INSERT INTO students (name, email, enrolled_on)
VALUES
('Alice Johnson', 'alice.johnson@example.com', '2026-10-01'),
('Brian Otieno', 'brian.otieno@example.com', '2026-10-02');

SELECT * FROM students;

-- Least privilege:
-- CREATE USER 'school_app'@'localhost' IDENTIFIED BY 'REPLACE_WITH_A_STRONG_UNIQUE_PASSWORD';
-- GRANT SELECT, INSERT, UPDATE, DELETE ON school.students TO 'school_app'@'localhost';
-- SHOW GRANTS FOR 'school_app'@'localhost';