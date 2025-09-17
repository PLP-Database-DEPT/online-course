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
CREATE TABLE student_quiz_attempt (
    student_id INT,
    -- Foreign Key referencing student(id)
    quiz_id INT,
    -- Foreign Key referencing quiz(id)
    attempt_datetime DATETIME NOT NULL,
    -- When the quiz was attempted
    score_achieved INT,
    -- Score obtained in the attempt
,
    -- Foreign key constraints
    FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (quiz_id) REFERENCES quiz(id)
);