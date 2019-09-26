DROP TABLE dep_space, subscriber, department

CREATE TABLE dep_space_kind (
	dep_space_kind_id INT IDENTITY PRIMARY KEY NOT NULL,
	dep_space_kind_name VARCHAR(50) NOT NULL
);


CREATE TABLE department (
	department_id INT IDENTITY PRIMARY KEY NOT NULL,
	department_name VARCHAR(30) NOT NULL,
--	department_space INT NOT NULL,
--	CONSTRAINT fk_dep_space FOREIGN KEY (department_space) REFERENCES dep_space(dep_space_id)
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
	subscriber_depar INT NOT NULL,
	subscriber_phone_number VARCHAR(5) NULL,
	CONSTRAINT SS_department_id FOREIGN KEY (subscriber_depar) REFERENCES department(department_id) ON DELETE CASCADE
);