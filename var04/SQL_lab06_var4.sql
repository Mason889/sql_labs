use lab_db_var4
go

DROP VIEW FirstView, SecondView, ThirdView
GO

create view FirstView
as
	select 
		emp.employee_name, emp.employee_middlename, l.lesson_name
	from
		employee emp
		left outer join lesson l 
		on l.lesson_id = emp.lesson_name
go

create view SecondView
as
	select
		emp.employee_name, emp.employee_middlename, dep.department_name, depk.department_kind_name
	from 
		employee emp
		inner join department dep
		on dep.department_id =  emp.employee_department
		inner join department_kind depk
		on depk.department_kind_id = dep.department_kind
with check option
go

create view ThirdView
as
	select 
		dep.department_name, l.lesson_name
	from
		employee emp
		inner join 
			lesson l
			on l.lesson_id = emp.lesson_name
		inner join
			department dep
			on dep.department_id = emp.employee_department
	group by
		dep.department_name, l.lesson_name
go

select employee_name, lesson_name from FirstView						
select department_name, count(employee_name) as number_of_employee from SecondView group by department_name
select lesson_name, count(department_name) as number_of_departments from ThirdView group by lesson_name