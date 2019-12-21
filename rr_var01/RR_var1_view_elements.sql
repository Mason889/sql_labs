use rr_var1
go

drop view list_first
go

create view list_first
as
	select 
		emp.employee_firstname, emp.employee_lastname, ec.employee_child_id, ec.employee_child_firstname, ec.employee_child_lastname, DATEDIFF(year, ec.employee_child_birth_date,getdate()) as employee_child_age
	from
		employee emp
		inner join
			employee_child ec
			on ec.employee_child_parent = emp.employee_id
with check option
go

select * from list_first
go

drop view list_second
go

create view list_second
as
	select
		emp.employee_firstname, emp.employee_lastname, datediff(year, emp.employee_wk_date, getdate()) as work_experience
	from
		employee emp
	where
		datediff(year, emp.employee_wk_date, getdate())>=30
with check option
go

select * from list_second
go

drop view list_third
go

create view list_third
as
	select
		emp.employee_firstname, emp.employee_lastname, d.department_title, tt.maximum as employee_salary
	from
		employee emp
		inner join
			position p
			on p.position_id = emp.employee_position
		inner join
			department d
			on d.department_id = emp.employee_department
		inner join
			salary  s
			on emp.employee_position = s.salary_position and emp.employee_department = s.salary_department
		inner join
			(
			select
				 d.department_id, max(s.salary_value) as maximum
			from
				employee emp
				inner join
					position p
					on p.position_id = emp.employee_position
				inner join
					department d
					on d.department_id = emp.employee_department
				inner join
					salary  s
					on emp.employee_position = s.salary_position and emp.employee_department = s.salary_department
			group by
				d.department_id
			) as tt
			on tt.department_id = d.department_id and s.salary_value = tt.maximum
	group by
		emp.employee_firstname, emp.employee_lastname, d.department_title, tt.maximum
with check option
go

select * from list_third
go

drop table list_fourth
go

create view list_fourth
as
	select
		e.employee_firstname, e.employee_lastname
	from
		employee e
		inner join
			employee_child ec
			on ec.employee_child_parent = e.employee_id
	group by
		e.employee_firstname, e.employee_lastname
	having e.employee_firstname in (
	select
		e.employee_firstname
	from
		employee e
		inner join
			employee_child ec
			on ec.employee_child_parent = e.employee_id
	where
		ec.employee_child_gender = 'M'
	)
	and e.employee_firstname in (
	select
		e.employee_firstname
	from
		employee e
		inner join
			employee_child ec
			on ec.employee_child_parent = e.employee_id
	where
		ec.employee_child_gender = 'F'
	)
with check option
go

select * from list_fourth
go

create proc calculation (
	@employee_id int
)
as
	if exists(
		select
			emp.employee_id, emp.employee_firstname
		from
			employee emp
			inner join
				employee_child ec
				on ec.employee_child_parent = emp.employee_id
		group by
			emp.employee_id, emp.employee_firstname
		having
			emp.employee_id = @employee_id
	)
	begin
		print('This employee has child/children. So final salary`ll be: ')
		select 
			(s.salary_value/0.87) as salary_without_pdfo
		from
			employee emp
			inner join
				salary s
				on s.salary_position = emp.employee_position and s.salary_department = emp.employee_department
		where
			emp.employee_id = @employee_id
	end;
	else 
		begin
		print('This employee does not have child/children. So final salary`ll be: ')
		select 
			s.salary_value as salary
		from
			employee emp
			inner join
				salary s
				on s.salary_position = emp.employee_position and s.salary_department = emp.employee_department
		where
			emp.employee_id = @employee_id
		end
go

exec calculation 10
go

drop proc correction_first
go

create proc correction_first(
	@position_id int = 1,
	@department_id int = 1,
	@salary_value int = 1000
)
as
	begin
	update salary set salary_value = @salary_value where salary_position = @position_id and salary_department = @department_id 
	end
go

exec correction_first 1, 1, 1400
go

drop proc correction_second
go

create proc correction_second(
	@employee_id int,
	@employee_department int
)
as
	begin
	update employee set employee_department = @employee_department where employee_id = @employee_id
	end
go

exec correction_second 1, 2
go

drop proc correction_third
go

create proc correction_third
(
	@employee_id int,
	@employee_position int
)
as
	begin
	update employee set employee_position = @employee_position where employee_id = @employee_id
	end
go

exec correction_third 1, 2
go


select
	emp.employee_firstname, emp.employee_lastname, DATEDIFF(year, emp.employee_birth_date, GETDATE()) as age
from
	employee emp
where emp.employee_id not in
	(
		select
			emp.employee_id
		from
			employee emp
			inner join
				employee_child ec
				on ec.employee_child_parent = emp.employee_id
		group by
			emp.employee_id
	) and DATEDIFF(year, emp.employee_birth_date, GETDATE()) between 20 and 30			-- changeable parameter
order by
	age

---

select
		emp.employee_firstname, emp.employee_lastname, d.department_title, p.position_title, s.salary_value, tt.number_of_children
	from
		employee emp
		inner join
			position p
			on p.position_id = emp.employee_position
		inner join
			department d
			on d.department_id = emp.employee_department
		inner join
			salary  s
			on emp.employee_position = s.salary_position and emp.employee_department = s.salary_department
		left join
		(
			select
				emp.employee_id, count(ec.employee_child_id) as number_of_children
			from
				employee emp
				inner join
					employee_child ec
					on ec.employee_child_parent = emp.employee_id
			group by
				emp.employee_id
		) as tt
		on emp.employee_id = tt.employee_id