use lab_db_var13
go

--drop proc task			-- WARNING! uncomment after first executing
--go

create procedure task (
	@student_id int
)
as
	begin
		select
			s.student_fname, s.student_lname ,sum(sp.specialisation_price) as result
		from
			student s
			inner join
				payment_state ps
				on ps.payment_state_student = s.student_id
			inner join
				student_group sg
				on sg.student_group_id = s.student_group
			inner join
				specialisation sp
				on sp.specialisation_id = sg.student_group_specialisation
		group by
			s.student_id, s.student_fname, s.student_lname
		having
			s.student_id = @student_id
	end
go

exec task 2
go

--drop proc lab_task_insert			-- WARNING! uncomment after first executing
--go

create proc lab_task_insert 
(
	@student_fname varchar(40),
	@student_lname varchar(35),
	@student_dr date,
	@student_gender varchar(1),
	@student_group int = 1
)
as
	if exists(
	select 
		s.student_id
	from
		student s
	where
		s.student_fname = @student_fname
		and s.student_lname = @student_lname
		and s.student_dr = @student_dr
		and s.student_gender = @student_gender
		and s.student_group = @student_group)
		begin
			RAISERROR ('Error! Dublication of student.', 16, 1);  
		end
	else
		begin
	insert into
		student
		(	student_fname,
			student_lname,
			student_dr,
			student_gender,
			student_group
		) 
		values 
			(	
			@student_fname,
			@student_lname,
			@student_dr,
			@student_gender,
			@student_group
			);
		end
go 

exec lab_task_insert 'test', 'test', '1999-05-28', 'M', 1
go