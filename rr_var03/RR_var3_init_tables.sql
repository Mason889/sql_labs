use rr_var3
go

drop table exam, student, lesson,  stud_group, education_type, faculty, studentship_fund


create table faculty (
	faculty_id int identity primary key not null,
	faculty_name varchar(40) not null
);

create table education_type(
	education_type_id int identity primary key not null,
	education_type_name varchar(40) not null
);

create table stud_group (
	group_id int identity primary key not null,
	group_name varchar(20) not null,
	group_course int not null,
	group_faculty int foreign key references faculty(faculty_id),
	constraint course_valid check (group_course between 1 and 6),
	group_type_of_education int foreign key references education_type(education_type_id) not null
);

create table lesson (
	lesson_id int identity primary key not null,
	lesson_name varchar(40) not null
);

create table student (
	student_record_book_id int identity primary key not null,
	student_name varchar(40) not null,
	student_middlename varchar(40) not null,
	student_group int foreign key references stud_group(group_id) not null,
--	student_faculty int foreign key references faculty(faculty_id) not null
);

create table exam (
	exam_id int identity primary key not null,
	lesson int foreign key references lesson(lesson_id),
	student int foreign key references student(student_record_book_id),
	result int not null,
	constraint result_check check (result between 0 and 100)
);

create table studentship_fund (
	studentship_fund_id int identity primary key not null,
	studentship_fund_name varchar(40) not null,
	studentship_fund_value int not null
);