CREATE TABLE teachers(
	teacher_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	homeroom_number SMALLINT,
	department VARCHAR(100),
	email VARCHAR(250) UNIQUE,
	phone VARCHAR(10) NOT NULL UNIQUE
)

CREATE TABLE students(
	student_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	homeroom_number SMALLINT,
	email VARCHAR(250) UNIQUE,
	phone VARCHAR(10) NOT NULL UNIQUE,
	graduation_year VARCHAR(5)
)

INSERT INTO students(first_name, last_name, homeroom_number, phone, graduation_year)
VALUES ('Mark', 'Watney', 5, '7775551234', '2035')

select * from students

INSERT INTO teachers(first_name, last_name, homeroom_number, department, email, phone)
VALUES ('Jonas', 'Salk', 5, 'Biology', 'jsalk@school.org', '7775554321')

select * from teachers
