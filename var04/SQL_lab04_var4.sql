use lab_db_var4
go

select emp.employee_name, emp.employee_middlename, les.lesson_name
	from
		lesson les
		inner join
		employee emp
		on emp.lesson_name = les.lesson_id
	order by
		lesson_name desc 

select emp.employee_name, empg.empgroup_name
		from employee emp
		inner join
		empgroup empg
		on emp.employee_group = empg.emgroup_id
	order by 
		empg.empgroup_name

select les.lesson_name, empg.empgroup_name
		from lesson les
		inner join
		employee emp
		on emp.lesson_name = les.lesson_id
		inner join
		empgroup empg
		on empg.emgroup_id = emp.employee_group
	group by les.lesson_name, empg.empgroup_name
	order by empg.empgroup_name