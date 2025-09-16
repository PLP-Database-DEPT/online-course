
-- create database
CREATE DATABASE course;
USE course;

-- create table course
CREATE TABLE course (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    description VARCHAR(255),
    price INT,
    is_progress_limited TINYINT
);