
-- create database
CREATE DATABASE course;
USE course;

CREATE TABLE quiz(
-- id is the unique identifier of every record created in the database
id INT PRIMARY KEY,
-- id for courses to reference it for quiz creation and can't be left empty
course_id INT NOT NULL, 
-- the field is a character field of 500 characters, it can not be left empty in the database
name VARCHAR(500) NOT NULL,
-- the field is also an integer, please note,positive integer, it can not be left empty in the table
number INT NOT NULL,
-- the field is also an integer, please note,positive integer, it can not be left empty in the table
course_order INT NOT NULL,
-- The field is an integer and can not be empty in the database
min_pass_score INT NOT NULL,
-- this is a boolean, this means the default for this field is True which 1, meaning pass required
is_pass_required TINYINT NOT NULL DEFAULT 1,
-- If a course is deleted, all its related quizzes will be automatically deleted too—this maintains data integrity.
FOREIGN KEY (course_id) REFERENCES course(id) ON DELETE CASCADE
);