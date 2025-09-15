
-- create database
CREATE DATABASE course;
USE course;

-- Create tables

CREATE TABLE course (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10,2),
    is_progress_limited BOOLEAN DEFAULT FALSE
);

CREATE TABLE module (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    number INT,
    FOREIGN KEY (course_id) REFERENCES course(id)
);

CREATE TABLE lesson (
    id INT AUTO_INCREMENT PRIMARY KEY,
    module_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    number INT,
    video_url VARCHAR(255),
    lesson_details TEXT,
    course_order INT,
    FOREIGN KEY (module_id) REFERENCES module(id)
);

CREATE TABLE student (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email_address VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE enrolment (
    course_id INT,
    student_id INT,
    enrolment_datetime DATETIME DEFAULT CURRENT_TIMESTAMP,
    completed_datetime DATETIME,
    PRIMARY KEY (course_id, student_id),
    FOREIGN KEY (course_id) REFERENCES course(id),
    FOREIGN KEY (student_id) REFERENCES student(id)
);

CREATE TABLE student_lesson (
    student_id INT,
    lesson_id INT,
    completed_datetime DATETIME,
    PRIMARY KEY (student_id, lesson_id),
    FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (lesson_id) REFERENCES lesson(id)
);

CREATE TABLE quiz (
    id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    number INT,
    course_order INT,
    min_pass_score DECIMAL(5,2),
    is_pass_required BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (course_id) REFERENCES course(id)
);

CREATE TABLE quiz_question (
    id INT AUTO_INCREMENT PRIMARY KEY,
    quiz_id INT NOT NULL,
    question_title TEXT NOT NULL,
    FOREIGN KEY (quiz_id) REFERENCES quiz(id)
);

CREATE TABLE quiz_answer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_id INT NOT NULL,
    answer_text TEXT NOT NULL,
    is_correct BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (question_id) REFERENCES quiz_question(id)
);

CREATE TABLE student_quiz_attempt (
    student_id INT,
    quiz_id INT,
    attempt_datetime DATETIME DEFAULT CURRENT_TIMESTAMP,
    score_achieved DECIMAL(5,2),
    PRIMARY KEY (student_id, quiz_id, attempt_datetime),
    FOREIGN KEY (student_id) REFERENCES student(id),
    FOREIGN KEY (quiz_id) REFERENCES quiz(id)
);

