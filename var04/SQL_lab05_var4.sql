use lab_db_var4
go

select empg.empgroup_name, subtable.CE
	from empgroup empg
	inner join
	(select count(emp.employee_id) as CE, emp.employee_group from employee emp group by emp.employee_group) as subtable
	on subtable.employee_group = empg.emgroup_id
	group by empg.empgroup_name, subtable.CE
	having subtable.CE >= all(select count(emp.employee_id) as CE from employee emp group by employee_group)

select les.lesson_name
	from lesson les
	inner join
	(select count(emp.employee_id) as CE, emp.lesson_name from employee emp group by emp.lesson_name) as SS
	on SS.lesson_name = les.lesson_id
	group by les.lesson_name, SS.CE
	having SS.CE >= all(select count(emp.employee_id) as CE from employee emp group by emp.lesson_name)