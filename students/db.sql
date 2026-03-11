CREATE DATABASE students;
/c students;
CREATE TABLE students (student_id SERIAL PRIMARY KEY, first_name VARCHAR(50) NOT NULL, last_name VARCHAR(50) NOT NULL, major_id INT, gpa NUMERIC(2,1));
CREATE TABLE majors (major_id SERIAL PRIMARY KEY, major VARCHAR(50));
CREATE TABLE courses (course_id SERIAL PRIMARY KEY, course VARCHAR(100));
CREATE TABLE majors_courses (major_id INT, course_id INT);

ALTER TABLE students ADD FPREIGN KEY (major_id) REFERENCES majors(major_id);
ALTER TABLE majors_courses ADD FOREIGN KEY (course_id) REFERENCES courses(course_id);
ALTER TABLE majors_courses ADD FPREIGN KEY (major_id) REFERENCES majors(major_id);
ALTER TABLE majors_courses ADD PRIMARY KEY (course_id, major_id);

