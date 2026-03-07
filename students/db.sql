CREATE DATABASE students;
/c students;
CREATE TABLE students (student_id SERIAL PRIMARY KEY, first_name VARCHAR(50) NOT NULL, last_name VARCHAR(50) NOT NULL, major_id INT, gpa NUMERIC(2,1));
