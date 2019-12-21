use rr_var1
go

drop table employee_child, employee, salary, position, department, department_type
go

create table department_type (
	department_type_id int primary key identity not null,
	department_type_title varchar(40) not null
)

create table department (
	department_id int primary key identity not null,
	department_title varchar(40) not null,
	department_type int foreign key references department_type(department_type_id)
)

create table position (
	position_id int primary key identity not null,
	position_title varchar(40) not null
)

create table employee (
	employee_id int primary key identity not null,
	employee_firstname varchar(40) not null,
	employee_lastname varchar(40) not null,
	employee_birth_date date not null,
	employee_onboard_date date not null,
	employee_wk_date date not null,
	employee_department int foreign key references department(department_id),
	employee_position int foreign key references position(position_id),
)

create table employee_child (
	employee_child_id int primary key identity not null,
	employee_child_firstname varchar(40) not null,
	employee_child_lastname varchar(40) not null,
	employee_child_gender varchar(1) not null
	CONSTRAINT employee_child_gender_check CHECK(employee_child_gender LIKE '[MF]'),
	employee_child_birth_date date not null,
	employee_child_parent int foreign key references employee(employee_id)
)


create table salary (
	salary_id int primary key identity not null,
	salary_position int foreign key references position(position_id),
	salary_department int foreign key references department(department_id),
	salary_value int not null
)