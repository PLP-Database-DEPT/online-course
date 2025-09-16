-- Table: student to store student login credentials and identification details.
-- Note: The password column stores an encrypted or hashed password
CREATE TABLE student (
    id INT PRIMARY KEY,
    email_address VARCHAR(100) NOT NULL,
    password VARCHAR(200) NOT NULL
);
