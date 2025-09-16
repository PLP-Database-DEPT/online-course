
-- create database
CREATE DATABASE course;
USE course;

--create statement for student_quiz_attempt table

CREATE TABLE student_quiz_attempt (
    student_id INT,
    quiz_id INT,
    attempt_datetime DATETIME DEFAULT CURRENT_TIMESTAMP,
    score_achieved INT NOT NULL,
-----Foreign Keys-----
------foreign key referencing to student table id------
    FOREIGN KEY (student_id) REFERENCES student(id),
------foreign key referencing to quiz table id------
    FOREIGN KEY (quiz_id) REFERENCES quiz(id)
);
