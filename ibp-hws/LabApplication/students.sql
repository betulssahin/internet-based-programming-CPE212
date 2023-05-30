CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  full_name VARCHAR(255),
  email VARCHAR(255),
  gender ENUM('Male', 'Female')
);
