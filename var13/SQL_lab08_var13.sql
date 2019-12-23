use lab_db_var13
go

drop trigger trigger_first
go

create trigger trigger_first
	on payment_state  
		for insert, update 
	as  
	if exists (
	select *
				from
					payment_state ps
				where
				ps.payment_state_student in (select ps.payment_state_student from payment_state ps group by ps.payment_state_student, ps.payment_state having count(ps.payment_state_student)>1)
				and ps.payment_state_semester in (select ps.payment_state_student from payment_state ps group by ps.payment_state_student, ps.payment_state_semester, ps.payment_state having count(ps.payment_state_semester)>1) 
				 )
	begin
	RAISERROR ('Error! Dublication of payment_state.', 16, 1);  
	ROLLBACK TRANSACTION;  
	RETURN   
	END;  
	GO  

drop trigger trigger_second
go


create trigger trigger_second
	on payment_state
		after insert, update
	as
	begin 
		select
			s.student_fname, s.student_lname, sg.student_group_title, ps.payment_state_semester, sp.specialisation_price
		from
			student s
			inner join
				student_group sg
				on sg.student_group_id = s.student_group
			inner join
				specialisation sp
				on sp.specialisation_id = sg.student_group_specialisation
			inner join
				payment_state ps
				on ps.payment_state_student = s.student_id
		where
			ps.payment_state = 0
	print('Hi!');
	return 
	end;
  