-- Table: student to store student login credentials and identification details.

CREATE TABLE student (
    id INT PRIMARY KEY,
    email_address VARCHAR(100) NOT NULL,
    password VARCHAR(200) NOT NULL
);
