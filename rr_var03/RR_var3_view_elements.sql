use rr_var3
go

create view list_first 
as 
	select 
		st.student_name, st.student_middlename, stg.group_name
	from student st
	inner join
		stud_group stg
		on stg.group_id = st.student_group
	where stg.group_course = 2
with check option
go

select * from list_first
go



create view list_second
as 
	select 
		st.student_name, st.student_middlename, stg.group_name as grpn, avg(e.result) as average_result
	from student st
		inner join 
			exam e
			on e.student = st.student_record_book_id
		inner join
			stud_group stg
			on stg.group_id = st.student_group
		inner join
		(select tt.group_id, max(tt.average_result_by_group) as average_for_student
			from
			(select 
				st.student_name, stg.group_id ,avg(e.result) as average_result_by_group
			from exam e
			inner join
				student st
				on st.student_record_book_id = e.student
			inner join	
				stud_group stg
				on stg.group_id = st.student_group
			group by stg.group_name, stg.group_id, st.student_name) as tt
			group by tt.group_id) as test
		on test.group_id = stg.group_id
		group by student_name, st.student_middlename, stg.group_name, test.average_for_student
		having avg(e.result) = max(test.average_for_student)
with check option
go

select * from list_second order by grpn, average_result desc
go

create view list_third
as
	select
		l.lesson_name
	from
		lesson l
	where l.lesson_id not in (select e.lesson from exam e)
with check option
go

select * from list_third
go

drop proc calculation
go

create proc calculation
(
	@type_of_studship int = 1
)
as
	begin;
	select
		res.styp * stf.studentship_fund_value as final_fund_for_each_group
	from
	(
	select 
		stg.group_name, count(st.student_name) as styp
	from 
		student st--, studentship_fund stf
		inner join
			stud_group stg
			on stg.group_id = st.student_group
		inner join 
			exam e
			on e.student = st.student_record_book_id
		inner join 
			(
		select 
			stg.group_id, avg(e.result) as average
		from 
			exam e
			inner join
			student st on st.student_record_book_id = e.student
			inner join
			stud_group stg on stg.group_id = st.student_group
		group by stg.group_id
			) as tt
		on tt.group_id = stg.group_id
	group by stg.group_name, st.student_name, tt.average
	having avg(e.result) > tt.average
	) as res, studentship_fund stf
	where stf.studentship_fund_id = @type_of_studship
	--having avg(e.result) >= all(
	--select tt.average as av
	--	from (
	--	select 
	--		stg.group_course, avg(e.result) as average
	--	from 
	--		exam e
	--		inner join
	--		student st on st.student_record_book_id = e.student
	--		inner join
	--		stud_group stg on stg.group_id = st.student_group
	--	group by stg.group_course) as tt
	--	)
		end;
go

exec calculation 2
go

create proc correction
(
	@lesson int,
	@student int,
	@result int
)
as
	begin;
	update 
		exam 
	set 
		result =@result
	where 
		lesson = @lesson and student = @student
	end;
go

exec correction 1, 1, 100
go

-- Reports


select 
	f.faculty_name, stg.group_course, stg.group_name, st.student_record_book_id, st.student_name, st.student_middlename, avg(e.result) as average
from
	student st
	inner join 
		exam e
		on e.student = st.student_record_book_id
	inner join 
		stud_group stg
		on stg.group_id = st.student_group
	inner join
		faculty f
		on f.faculty_id = stg.group_faculty
	group by
		f.faculty_name, stg.group_course, stg.group_name, st.student_record_book_id, st.student_name, st.student_middlename

select 
	f.faculty_name, stg.group_course, count(st.student_record_book_id) as number
	from 
		student st
		inner join 
			stud_group stg
			on stg.group_id = st.student_group
		inner join
			faculty f
			on f.faculty_id = stg.group_faculty
		--inner join
		--	education_type et
		--	on et.education_type_id = stg.group_type_of_education
		group by 
			f.faculty_name, stg.group_course, stg.group_type_of_education
		having stg.group_type_of_education <> 2

select
	et.education_type_name, count(st.student_record_book_id) as number
from
	student st
	inner join
		stud_group stg
		on stg.group_id = st.student_group
	inner join
		education_type et
		on et.education_type_id = stg.group_type_of_education
group by 
	et.education_type_name


select
	st.student_name, st.student_middlename, avg(e.result)-tt.average as distinction_of_result_for_each_student
from 
	student st
	inner join 
		stud_group stg
		on stg.group_id = st.student_group
	inner join 
		exam e
		on e.student = st.student_record_book_id
	inner join
		(
			select
				stg.group_id, avg(e.result) as average
			from	
				student st
				inner join 
					stud_group stg
					on stg.group_id = st.student_group
				inner join 
					exam e
					on e.student = st.student_record_book_id
			group by stg.group_id
		) as tt
		on tt.group_id = stg.group_id
group by
	st.student_name, st.student_middlename, tt.average



--select
--	stg.group_id, avg(e.result) as average
--from	
--	student st
--	inner join 
--		stud_group stg
--		on stg.group_id = st.student_group
--	inner join 
--		exam e
--		on e.student = st.student_record_book_id
--group by stg.group_id


--create view students_report					-- first task from report list
--as 
--	select
--		f.faculty_name, stg.group_name, st.student_name, st.student_record_book_id, avg(e.result) as average_mark
--	from
--		faculty f
--		inner join stud_group stg
--		on stg.group_faculty = f.faculty_id
--		inner join student st
--		on st.student_faculty = f.faculty_id
--		inner join exam e
--		on e.student = st.student_record_book_id
--	group by st.student_record_book_id, f.faculty_name, stg.group_name, st.student_name
--with check option 
--go
