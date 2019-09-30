create table department (
	department_id int identity primary key not null,
	department_name varchar(35) not null
);

create table position (
	position_id int identity primary key not null,
	position_name varchar(40) not null
);

create table lesson (
	lesson_id int identity primary key not null,
	lesson_name varchar(40) not null
);

create table employee (
	employee_id int identity primary key not null,
	employee_first_name varchar(35) not null,
	emplouee_second_name varchar(40) not null,
	employee_department int foreign key references department(department_id),
	employee_position int foreign key references position(position_id),
	employee_lesson int foreign key references lesson(lesson_id)
);