
-- create database
CREATE DATABASE course;
USE course;


-- create table quiz_question

CREATE TABLE quiz_question (
    id INT PRIMARY KEY, -- -- unique id for each question
    quiz_id INT NOT NULL, -- foreign key to quiz table
    question_title VARCHAR(500) NOT NULL, -- question title
    FOREIGN KEY (quiz_id) REFERENCES quiz(id)
);