use lab_db_var3
go

drop proc lab_task
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

exec lab_task 3
go



--EXEC What_DB_is_this 0;