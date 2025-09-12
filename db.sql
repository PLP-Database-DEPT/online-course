
-- create database
CREATE DATABASE course;
USE course;
-- enrolment table with foreign keys referencing course and student tables
CREATE TABLE enrolment (
    course_id INT,
    student_id INT,
    enrolment_datetime DATETIME,
    completed_datetime DATETIME,
    FOREIGN KEY (course_id) REFERENCES course(id),
    FOREIGN KEY (student_id) REFERENCES student(id)
);
-- lesson tables which references module table

CREATE TABLE lesson (
    id INT PRIMARY KEY,
    module_id INT,
    name VARCHAR(100),
    number INT,
    video_url VARCHAR(500),
    lesson_details TEXT,
    course_order INT,
    FOREIGN KEY (module_id) REFERENCES module(id)
);
