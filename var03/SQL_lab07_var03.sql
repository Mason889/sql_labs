use lab_db_var3
go

drop proc lab_task, lab_task_insert 
go

--CREATE PROC What_DB_is_this @ID INT     
--AS   
--SELECT DB_NAME(@ID) AS ThisDB; 
--go

create proc lab_task @empdep_id int
as
select 
	dep.department_name, count(employee_id) as count_of_employee
from employee emp
	inner join 
		department dep
	on 
	emp.employee_department = dep.department_id
	group by dep.department_id, dep.department_name
	having dep.department_id = @empdep_id
go

create proc lab_task_insert 
(
	@employee_name varchar(40),
	@employee_middlename varchar(40),
	@employee_gender varchar(1),
	@employee_address varchar(100),
	@employee_hb_date date,
	@employee_date_hiring date,
	@employee_department int = 1,
	@employee_group int = 1,
	@employee_position int = 1
)
as
	insert into
		employee
		(employee_name, employee_middlename, employee_gender, employee_address, employee_hb_date, employee_date_hiring, employee_department, employee_group, employee_position) 
VALUES 
	(	@employee_name,
		@employee_middlename,
		@employee_gender,
		@employee_address,
		@employee_hb_date,
		@employee_date_hiring,
		@employee_department,
		@employee_group,
		@employee_position);
go 


exec lab_task 3
go

exec lab_task_insert 'John', 'Maryck', 'M', '14th Str.', '1995-02-25', '2018-01-20', 1, 2, 1

--EXEC What_DB_is_this 0;