use rr_var3
go

------------------------Studentship fund
insert into	studentship_fund (studentship_fund_name, studentship_fund_value) values ('����������', 100);
insert into	studentship_fund (studentship_fund_name, studentship_fund_value) values ('�������������', 80);
------------------------Faculty
insert into
	faculty (faculty_name)
	values
	('IPT');
insert into
	faculty (faculty_name)
	values
	('IASA');
--insert into
--	faculty (faculty_name)
--	values
--	('FMF');
	-----------------------Education-type
insert into education_type(education_type_name) values ('����')
insert into education_type(education_type_name) values ('������')
------------------------Student Groups
insert into
	stud_group (group_name, group_course, group_faculty, group_type_of_education)
	values		('fb-91', 1, 1, 1);									-- first year student of FB on IPT
--insert into
--	stud_group (group_name, group_course, group_faculty)
--	values		('ff-91', 1, 1);									-- first year student of FF on IPT
insert into
	stud_group (group_name, group_course, group_faculty, group_type_of_education)
	values		('fb-81', 2, 1, 1);									-- second year student of FB on IPT
insert into
	stud_group (group_name, group_course, group_faculty, group_type_of_education)
	values		('ff-81', 2, 1, 2);									-- second year student of FF on IPT
insert into
	stud_group (group_name, group_course, group_faculty, group_type_of_education)
	values		('fb-71', 3, 1, 1);									-- third year student of FB on IPT
--insert into
--	stud_group (group_name, group_course, group_faculty)
--	values		('ff-71', 3, 1);									-- third year student of FF on IPT
insert into
	stud_group (group_name, group_course, group_faculty, group_type_of_education)
	values		('fb-61', 4, 1, 1);									-- fourth year student of FB on IPT

	--------- IPT over
insert into
	stud_group (group_name, group_course, group_faculty, group_type_of_education)
	values		('ia-91', 1, 2, 1);									-- first year student of FM on FMM
--insert into
--	stud_group (group_name, group_course, group_faculty)
--	values		('is-91', 1, 2);									-- first year student of FF on FMM
insert into
	stud_group (group_name, group_course, group_faculty, group_type_of_education)
	values		('ia-81', 2, 2, 1);									-- second year student of FM on FMM
insert into
	stud_group (group_name, group_course, group_faculty, group_type_of_education)
	values		('is-81', 2, 2, 2);									-- second year student of FF on FMM
insert into
	stud_group (group_name, group_course, group_faculty, group_type_of_education)
	values		('ia-71', 3, 2, 1);									-- third year student of FM on FMM
--insert into
--	stud_group (group_name, group_course, group_faculty)
--	values		('is-71', 3, 2);									-- third year student of FF on FMM
insert into
	stud_group (group_name, group_course, group_faculty, group_type_of_education)
	values		('ia-61', 4, 2, 1);									-- fourth year student of FM on FMM


	------------------------Lessons
insert into lesson (lesson_name) values ('������ ����������')
insert into lesson (lesson_name) values ('������')
insert into lesson (lesson_name) values ('���������� ����')
insert into lesson (lesson_name) values ('���������� ����')
insert into lesson (lesson_name) values ('������ �����������')
insert into lesson (lesson_name) values ('������ ����������')
insert into lesson (lesson_name) values ('���. ���� ������')
insert into lesson (lesson_name) values ('����������� ������� ����������������')


	-----------------------Students
	-- fb-91
insert into 
	student(student_name, student_middlename, student_group)
	values ('ϸ��', '������', 1)
insert into 
	student(student_name, student_middlename, student_group)
	values ('���������', '������', 1)
insert into 
	student(student_name, student_middlename, student_group)
	values ('������', '�����', 6)
insert into 
	student(student_name, student_middlename, student_group)
	values ('�����', '���������', 6)
	-- ff-91
insert into 
	student(student_name, student_middlename, student_group)
	values ('������', '���������', 2)
insert into 
	student(student_name, student_middlename, student_group)
	values ('�����', '�������', 2)
insert into 
	student(student_name, student_middlename, student_group)
	values ('�����', '�������', 7)
insert into 
	student(student_name, student_middlename, student_group)
	values ('����������', '������', 7)
	-- fb-81
insert into 
	student(student_name, student_middlename, student_group)
	values ('������', '�������', 3)
insert into 
	student(student_name, student_middlename, student_group)
	values ('�������', '�������', 3)
insert into 
	student(student_name, student_middlename, student_group)
	values ('�������', '�������', 8)
insert into 
	student(student_name, student_middlename, student_group)
	values ('������', '�������', 8)
	-- ff-81
insert into 
	student(student_name, student_middlename, student_group)
	values ('�������', '����� ', 4)
insert into 
	student(student_name, student_middlename, student_group)
	values ('������ ', '��������', 4)
insert into 
	student(student_name, student_middlename, student_group)
	values ('������', '�����', 9)
insert into 
	student(student_name, student_middlename, student_group)
	values ('�������', '�������', 9)
	-- fb-71
insert into 
	student(student_name, student_middlename, student_group)
	values ('������', '���������', 5)
insert into 
	student(student_name, student_middlename, student_group)
	values ('�����', '�������', 5)
insert into 
	student(student_name, student_middlename, student_group)
	values ('�������', '�������', 10)
insert into 
	student(student_name, student_middlename, student_group)
	values ('�������', '�������', 10)
insert into 
	student(student_name, student_middlename, student_group)
	values ('����', '������', 10)
					--	-- ff-71
					--insert into 
					--	student(student_name, student_middlename, student_group, student_type_of_education)
					--	values ('������', '�����', 6, 2)
					--insert into 
					--	student(student_name, student_middlename, student_group, student_type_of_education)
					--	values ('�����', '�������', 6, 2)
					--insert into 
					--	student(student_name, student_middlename, student_group, student_type_of_education)
					--	values ('����', '�������', 6, 2)
					--insert into 
					--	student(student_name, student_middlename, student_group, student_type_of_education)
					--	values ('������', '��������', 6, 2)
					--	-- fb-61
					--insert into 
					--	student(student_name, student_middlename, student_group, student_type_of_education)
					--	values ('�����', '���������', 7, 1)
					--insert into 
					--	student(student_name, student_middlename, student_group, student_type_of_education)
					--	values ('���������', '�����������', 7, 1)
					--insert into 
					--	student(student_name, student_middlename, student_group, student_type_of_education)
					--	values ('������', '��������', 7, 1)
					--insert into 
					--	student(student_name, student_middlename, student_group, student_type_of_education)
					--	values ('������', '�������', 7, 1)
		-----------------------Exams
	insert into exam(lesson, student, result) values (1, 1, 65)
	insert into exam(lesson, student, result) values (2, 1, 90)
	insert into exam(lesson, student, result) values (1, 2, 100)
	insert into exam(lesson, student, result) values (2, 2, 95)
	insert into exam(lesson, student, result) values (1, 3, 76)
	insert into exam(lesson, student, result) values (2, 3, 84)
	insert into exam(lesson, student, result) values (1, 4, 60)
	insert into exam(lesson, student, result) values (2, 4, 82)
	insert into exam(lesson, student, result) values (1, 5, 60)
	insert into exam(lesson, student, result) values (5, 5, 60)
	insert into exam(lesson, student, result) values (1, 6, 97)
	insert into exam(lesson, student, result) values (5, 6, 93)
	insert into exam(lesson, student, result) values (5, 7, 70)
	insert into exam(lesson, student, result) values (6, 7, 61)
	insert into exam(lesson, student, result) values (5, 8, 60)
	insert into exam(lesson, student, result) values (6, 8, 91)
	insert into exam(lesson, student, result) values (8, 9, 60)
	insert into exam(lesson, student, result) values (8, 10, 90)
	insert into exam(lesson, student, result) values (7, 11, 89)
	insert into exam(lesson, student, result) values (7, 12, 64)
	insert into exam(lesson, student, result) values (6, 13, 72)
	insert into exam(lesson, student, result) values (6, 14, 70)
	insert into exam(lesson, student, result) values (5, 15, 87)
	insert into exam(lesson, student, result) values (5, 16, 100)
	insert into exam(lesson, student, result) values (6, 17, 89)
	insert into exam(lesson, student, result) values (6, 18, 73)
	insert into exam(lesson, student, result) values (5, 19, 72)
	insert into exam(lesson, student, result) values (5, 20, 88)
	insert into exam(lesson, student, result) values (5, 21, 100)