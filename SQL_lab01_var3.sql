DROP TABLE employee, department


CREATE TABLE department (
	department_id INT IDENTITY PRIMARY KEY NOT NULL,
	department_name VARCHAR(30) NOT NULL,
	department_kind VARCHAR(20) NOT NULL
);

CREATE TABLE employee (
	employee_id INT IDENTITY PRIMARY KEY,
	employee_name VARCHAR(40) NOT NULL,
	employee_middlename VARCHAR(40) NOT NULL,
	employee_gender VARCHAR(1) NOT NULL
	CONSTRAINT employee_gender_check CHECK(employee_gender LIKE '[MF]'),				--- check if input data of employee gender will be 'M' (Male) or 'F' (Female)
	employee_hb_date DATE NOT NULL,
	employee_address VARCHAR(100) NOT NULL,
	employee_position VARCHAR(40) NOT NULL,
	employee_department_id INT,
	employee_department VARCHAR (30) NOT NULL,
	employee_date_hiring DATE NOT NULL,
	employee_date_fired DATE,
	---
);

