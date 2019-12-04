use lab_db_var4
go

drop proc lab_task, lab_task_insert 
go

--CREATE PROC What_DB_is_this @ID INT     
--AS   
--SELECT DB_NAME(@ID) AS ThisDB; 
--go

create proc lab_task @dep_id int
as
	select 
		emp.employee_name, emp.employee_middlename, count(l.lesson_name) as count_of_lessons
	from employee emp
		inner join 
			department dep
			on emp.employee_department = dep.department_id
		inner join
			lesson l
			on l.lesson_id = emp.lesson_name
	group by 
		dep.department_id, emp.employee_name, emp.employee_middlename
	having
		dep.department_id = @dep_id
go

create proc lab_task_insert 
(
	@employee_name varchar(40),
	@employee_middlename varchar(40),
	@employee_gender varchar(1),
	@employee_address varchar(100),
	@employee_hb_date date,
	@employee_date_hiring date,
	@employee_lesson int,
	@employee_department int = 1,
	@employee_group int = 1,
	@employee_position int = 1
)
as
	if exists(
	select 
		emp.employee_id
	from
		employee emp
	where
		emp.employee_name = @employee_name 
		and emp.employee_middlename = @employee_middlename
		and emp.employee_gender = @employee_gender
		and emp.employee_address = @employee_address
		and emp.employee_hb_date = @employee_hb_date
		and emp.employee_date_hiring = @employee_date_hiring
		and emp.lesson_name = @employee_lesson)
		begin
			RAISERROR ('Error! Dublication of employee.', 16, 1);  
		end
	else
		begin
	insert into
		employee
		(employee_name, employee_middlename, employee_gender, employee_address, employee_hb_date, employee_date_hiring, employee_department, lesson_name, employee_group, employee_position) 
VALUES 
	(	@employee_name,
		@employee_middlename,
		@employee_gender,
		@employee_address,
		@employee_hb_date,
		@employee_date_hiring,
		@employee_department,
		@employee_lesson,
		@employee_group,
		@employee_position);
		end
go 


exec lab_task 1
go

exec lab_task_insert 'Anna', 'Menz', 'F', '15th Str.', '1990-03-25', '2018-02-20',1, 1, 2, 1

--EXEC What_DB_is_this 0;