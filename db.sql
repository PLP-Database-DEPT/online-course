
-- -----------------------------------------------------
-- Table: student_quiz_attempt
-- Purpose: Stores each quiz attempt made by students,
--          including when it was attempted and the score.
-- -----------------------------------------------------

CREATE TABLE student_quiz_attempt (
    student_id INT NOT NULL,
    quiz_id INT NOT NULL,
    attempt_datetime DATETIME NOT NULL,
    score_achieved INT NOT NULL,
    -- Foreign key to student(id)
    CONSTRAINT fk_student
        FOREIGN KEY (student_id) REFERENCES student(id),
    -- Foreign key to quiz(id)
    CONSTRAINT fk_quiz
        FOREIGN KEY (quiz_id) REFERENCES quiz(id)
);
