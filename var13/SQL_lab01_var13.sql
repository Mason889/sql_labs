use lab_db_var13
go

drop table payment_state, student, student_group, specialisation

create table specialisation (
	specialisation_id int primary key identity not null,
	specialisation_title varchar(40) not null,
	specialisation_price int not null
)
create table student_group (
	student_group_id int primary key identity not null,
	student_group_title varchar(40) not null,
	student_group_specialisation int foreign key references specialisation(specialisation_id),
	student_group_course int not null,
	student_group_semester int not null
)
create table student (
	student_id int primary key identity not null,
	student_fname varchar(40) not null,
	student_lname varchar(40) not null,
	student_gender varchar(1) not null,
	student_dr date not null,
	student_group  int foreign key references student_group(student_group_id)
)
create table payment_state (
	payment_state_id int primary key identity not null,
	payment_state_student int foreign key references student(student_id),
	payment_state_semester int,
--	payment_state_specialisation int foreign key references specialisation(specialisation_id),
--	payment_state_paid date not null,
--	payment_state_deadline date not null,
	payment_state bit not null
)
