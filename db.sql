
-- create database
CREATE DATABASE course;
USE course;

-- create table student and table lesson.
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE lesson (
    id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL
);

-- create table student_lesson to track completion of lessons by the students
-- Each record indicates when a student completed a specific lesson
CREATE TABLE student_lesson (
  student_id INT,
  lesson_id INT,
  completed_datetime DATETIME,
  FOREIGN KEY (student_id) REFERENCES student(id),
  FOREIGN KEY (lesson_id) REFERENCES lesson(id)
);
