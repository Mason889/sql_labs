use lab_db_var13
go

--drop view FirstView, SecondView		--WARNING! Uncomment code after first executing (for reinitialisation)
--go

create view FirstView											-- First View
as 
	select														-- first task
		s.student_fname, s.student_lname, sg.student_group_title
	from
		student s
		inner join
			student_group sg
			on sg.student_group_id = s.student_group
		inner join
			payment_state ps
			on ps.payment_state_student = s.student_id
	group by
		s.student_fname, s.student_lname, sg.student_group_title, ps.payment_state
	having 
		payment_state = 0
with check option
go

select * from FirstView
go

create view SecondView											-- Second View
as 
	select														-- for each group
		sg.student_group_title, sum(sp.specialisation_price) as result
	from
		student s
		inner join
			student_group sg
			on sg.student_group_id = s.student_group
		inner join
			specialisation sp
			on sp.specialisation_id = sg.student_group_specialisation
	group by
		sg.student_group_title
with check option
go

select * from SecondView
go