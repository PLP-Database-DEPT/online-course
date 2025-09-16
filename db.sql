
-- create database
CREATE DATABASE course;
USE course;

-- create a modules table 
-- This table contains modules of the courses in the course table.

CREATE TABLE module (
id INT PRIMARY KEY AUTO_INCREMENT,
course_id INT NOT NULL,
name VARCHAR(200) NOT NULL,
number INT NOT NULL, -- sequence of the module within the course
FOREIGN KEY (course_id) REFERENCES course(id)
);