-- A student table
--USE course 

CREATE TABLE student (
student_id INT PRIMARY KEY AUTO_INCREMENT,
email VARCHAR(100) UNIQUE NOT NULL,
password VARCHAR(100) NOT NULL
);