use lab_db_var20
go

select 
	 emp.FullName
from
	ADVERTISEMENTS adv
	inner join EMPLOYEES emp 
	on adv.ID_EMPLOYEES = emp.ID_EMPLOYEES
group by emp.FullName
having count(adv.ClientFullName) >= all (
	select 
		count(adv.ClientFullName)
	from
		ADVERTISEMENTS adv
		inner join EMPLOYEES emp 
		on adv.ID_EMPLOYEES = emp.ID_EMPLOYEES
	group by emp.FullName
)

