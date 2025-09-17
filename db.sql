-- create database
CREATE DATABASE course;
USE course;
-- create course table
CREATE TABLE Course(
    id INT PRIMARY KEY,
    --Primary Key
    name VARCHAR(100) NOT NULL,
    -- Name of the Course
    description VARCHAR(255),
    -- Detailed description of the course
    price INT,
    -- Cost of the course 
    is_progress_limited TINYINT -- Indicates whether course progress is limited by progress/time
);