use lab_db_var7
go

DROP TABLE subscriber, dep_space, dep_space_kind, department, department_type


CREATE TABLE dep_space_kind (
	dep_space_kind_id INT IDENTITY PRIMARY KEY NOT NULL,
	dep_space_kind_name VARCHAR(50) NOT NULL
);

CREATE TABLE department_type(
	department_type_id INT IDENTITY PRIMARY KEY NOT NULL,
	department_type_name VARCHAR(30) NOT NULL
);

CREATE TABLE department (
	department_id INT IDENTITY PRIMARY KEY NOT NULL,
	department_name VARCHAR(30) NOT NULL,
	department_type INT FOREIGN KEY REFERENCES department_type(department_type_id),
--	CONSTRAINT fk_dept_type FOREIGN KEY (department_type) REFERENCES department_type(department_type_id) ON DELETE CASCADE
);



CREATE TABLE dep_space (
	dep_space_id INT IDENTITY PRIMARY KEY NOT NULL,
	dep_space_name VARCHAR(100) NOT NULL,
	dep_space_kind INT FOREIGN KEY REFERENCES dep_space_kind(dep_space_kind_id),
	dep_id INT FOREIGN KEY REFERENCES department(department_id)

);

CREATE TABLE subscriber (
	subscriber_id INT IDENTITY PRIMARY KEY NOT NULL,
	subscriber_name VARCHAR(35) NOT NULL,
	subscriber_middle_name VARCHAR(35) NOT NULL,
	subscriber_date_birth DATE NOT NULL,
	subscriber_phone_number VARCHAR(5) NULL,
	subscriber_space INT FOREIGN KEY REFERENCES dep_space(dep_space_id),
);