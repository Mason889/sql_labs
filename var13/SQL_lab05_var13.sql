use lab_db_var13
go

select								-- title of specialisations that have the biggest count of 'debtors'
	sp.specialisation_title
from
	student s
	inner join
		student_group sg
		on s.student_group = sg.student_group_id
	inner join
		specialisation sp
		on sp.specialisation_id = sg.student_group_specialisation
	inner join
		payment_state ps
		on ps.payment_state_student = s.student_id
group by
	sp.specialisation_title
having
	count(ps.payment_state) >= all(
	select
		count(ps.payment_state) as temp
	from
		payment_state ps
		inner join
			student s
			on s.student_id = ps.payment_state_student
		inner join
		student_group sg
			on s.student_group = sg.student_group_id
		inner join
		specialisation sp
			on sp.specialisation_id = sg.student_group_specialisation
	group by
		sp.specialisation_title, ps.payment_state
	having 
		ps.payment_state = 0
	)
