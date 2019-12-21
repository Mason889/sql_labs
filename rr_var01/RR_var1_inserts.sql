use rr_var1
go

------------------------Department-Type
insert into department_type (department_type_title) values ('Supply');
insert into department_type (department_type_title) values ('Practice');
insert into department_type (department_type_title) values ('Finance');
-----------------------Department
insert into department (department_title,department_type) values ('Developers', 2);
insert into department (department_title,department_type) values ('QA', 2);
insert into department (department_title,department_type) values ('Operations', 1);
insert into department (department_title,department_type) values ('Security', 1);
insert into department (department_title,department_type) values ('Accounting', 3);
------------------------Position
insert into position (position_title) values ('Jr. Specialist');
insert into position (position_title) values ('Mid. Specialist');
insert into position (position_title) values ('Sr. Specialist');
insert into position (position_title) values ('Ld. Specialist');
------------------------Salary
insert into salary(salary_position, salary_department, salary_value) values (1, 1, 1200);
insert into salary(salary_position, salary_department, salary_value) values (1, 2, 1100);
insert into salary(salary_position, salary_department, salary_value) values (1, 3, 1100);
insert into salary(salary_position, salary_department, salary_value) values (1, 4, 1000);
insert into salary(salary_position, salary_department, salary_value) values (1, 5, 1300);
insert into salary(salary_position, salary_department, salary_value) values (2, 1, 2300);
insert into salary(salary_position, salary_department, salary_value) values (2, 2, 2050);
insert into salary(salary_position, salary_department, salary_value) values (2, 3, 2100);
insert into salary(salary_position, salary_department, salary_value) values (2, 4, 1800);
insert into salary(salary_position, salary_department, salary_value) values (2, 5, 2200);
insert into salary(salary_position, salary_department, salary_value) values (3, 1, 3400);
insert into salary(salary_position, salary_department, salary_value) values (3, 2, 3150);
insert into salary(salary_position, salary_department, salary_value) values (3, 3, 3400);
insert into salary(salary_position, salary_department, salary_value) values (3, 4, 2500);
insert into salary(salary_position, salary_department, salary_value) values (3, 5, 3200);
insert into salary(salary_position, salary_department, salary_value) values (4, 1, 4000);
insert into salary(salary_position, salary_department, salary_value) values (4, 2, 3800);
insert into salary(salary_position, salary_department, salary_value) values (4, 3, 3900);
insert into salary(salary_position, salary_department, salary_value) values (4, 4, 3000);
insert into salary(salary_position, salary_department, salary_value) values (4, 5, 3800);
------------------------Employee
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Пётр', 'Петров', '1998-05-24', '2019-06-06', '2018-08-10',1, 1)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Анастасия', 'Щукина', '1999-03-18', '2019-04-23', '2018-06-11', 2, 1)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Андрей', 'Белов', '1995-02-11', '2019-01-20', '2015-02-10', 3, 1)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Злата', 'Молчанова', '1993-02-11', '2018-11-29', '2012-01-13' ,4, 1)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Ульяна', 'Ковальчук', '1998-08-20', '2019-08-20', '2019-08-20', 5, 1)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Устин', 'Данилов', '1995-02-12', '2018-05-11', '2015-03-20', 1, 2)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Елена', 'Лыткина', '1996-12-29', '2018-03-20', '2016-03-10', 2, 2)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Константин', 'Жданов', '1995-07-11', '2017-11-21', '2015-02-18', 3, 2)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Прохор', 'Кабанов', '1992-01-21', '2017-04-28', '2011-05-20', 4, 2)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Харитон', 'Погомий', '1994-10-14', '2018-03-29', '2013-06-23', 5, 2)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Леонард', 'Яковлев', '1992-04-24', '2018-04-11', '2011-07-03', 1, 3)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Рафаил', 'Рыбаков', '1992-05-10', '2017-10-01', '2011-06-29', 2, 3)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Зинаида', 'Дзюба ', '1991-01-16', '2016-05-20', '2010-04-24', 3, 3)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Богдан', 'Палий', '1990-08-09', '2015-10-04', '2009-03-14', 4, 3)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Таисия ', 'Шевченко', '1988-05-19', '2015-09-29', '2007-01-11', 5, 3)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Игнатий', 'Суханов', '1985-12-10', '2015-01-05', '2004-01-21', 1, 4)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Яромир', 'Романенко', '1987-06-12', '2015-02-11', '2006-03-22', 2, 4)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Жигер', 'Шухевич', '1983-03-19', '2014-12-21', '2002-04-12', 3, 4)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Андреев', 'Алексей', '1978-05-30', '2014-10-11', '1997-01-21', 4, 4)
insert into 
	employee(employee_firstname, employee_lastname, employee_birth_date, employee_onboard_date, employee_wk_date, employee_department, employee_position)
	values ('Алексей', 'Новиков', '1970-05-30', '2015-01-18', '1988-01-21', 5, 4)
-----------------------Employee-children
	insert into employee_child(employee_child_firstname, employee_child_lastname, employee_child_gender, employee_child_birth_date, employee_child_parent) values ('Андрей', 'Шевченко', 'M', '2010-04-01', 15)
	insert into employee_child(employee_child_firstname, employee_child_lastname, employee_child_gender, employee_child_birth_date, employee_child_parent) values ('Анна', 'Шевченко', 'F', '2003-10-11', 15)
	insert into employee_child(employee_child_firstname, employee_child_lastname, employee_child_gender, employee_child_birth_date, employee_child_parent) values ('Святослав', 'Романенко', 'M', '2015-04-20', 17)
	insert into employee_child(employee_child_firstname, employee_child_lastname, employee_child_gender, employee_child_birth_date, employee_child_parent) values ('Марья', 'Погомий', 'F', '2017-08-29', 10)
	insert into employee_child(employee_child_firstname, employee_child_lastname, employee_child_gender, employee_child_birth_date, employee_child_parent) values ('Анастасия', 'Яковлева', 'F', '2017-08-29', 11)