use lab_db_var4
go

DROP TABLE employee, department, position, empgroup, department_kind, lesson

CREATE TABLE department_kind(
	department_kind_id INT IDENTITY PRIMARY KEY NOT NULL,
	department_kind_name VARCHAR(30) NOT NULL
);

CREATE TABLE department (
	department_id INT IDENTITY PRIMARY KEY NOT NULL,
	department_kind INT NOT NULL,
	department_name VARCHAR(30) NOT NULL
	CONSTRAINT fk_department_kind FOREIGN KEY (department_kind) REFERENCES department_kind(department_kind_id)
);

CREATE TABLE position (
	position_id INT IDENTITY PRIMARY KEY NOT NULL,
	position_name VARCHAR(30) NOT NULL
);
CREATE TABLE empgroup (
	emgroup_id INT IDENTITY PRIMARY KEY NOT NULL,
	empgroup_name VARCHAR(30) NOT NULL
);

CREATE TABLE lesson (
	lesson_id int identity primary key not null,
	lesson_name varchar(30) not null
);

CREATE TABLE employee (
	employee_id INT IDENTITY PRIMARY KEY,
	employee_name VARCHAR(40) NOT NULL,
	employee_middlename VARCHAR(40) NOT NULL,
	employee_gender VARCHAR(1) NOT NULL
	CONSTRAINT employee_gender_check CHECK(employee_gender LIKE '[MF]'),				--- check if input data of employee gender will be 'M' (Male) or 'F' (Female)
	employee_hb_date DATE NOT NULL,
	employee_address VARCHAR(100) NOT NULL,
	employee_position INT NOT NULL,														-- future foreign key on position table
	employee_department INT NOT NULL,													-- future foreign key on department table
	employee_group INT NOT NULL,														-- future foreign key on empgroup table
	employee_date_hiring DATE NOT NULL,
	employee_date_fired DATE NULL,
	lesson_name INT FOREIGN KEY REFERENCES lesson(lesson_id),
	CONSTRAINT fk_employee_position FOREIGN KEY (employee_position) REFERENCES position(position_id),
	CONSTRAINT fk_employee_department FOREIGN KEY (employee_department) REFERENCES department(department_id),
	CONSTRAINT fk_employee_group FOREIGN KEY (employee_group) REFERENCES empgroup(emgroup_id)
);


