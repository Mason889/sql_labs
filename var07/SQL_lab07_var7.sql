use lab_db_var7
go

drop proc lab_task_insert 
go

--CREATE PROC What_DB_is_this @ID INT     
--AS   
--SELECT DB_NAME(@ID) AS ThisDB; 
--go
drop proc lab_task
go

create proc lab_task (
	@dep_space_id int
)
as
	begin
		select
			ds.dep_space_name, count(s.subscriber_name) as number
		from
			subscriber s
			inner join
				dep_space ds
				on ds.dep_space_id = s.subscriber_space
		group by
			ds.dep_space_id, ds.dep_space_name
		having
			ds.dep_space_id = @dep_space_id
	end
go

exec lab_task 1
go

create proc lab_task_insert 
(
	@subscriber_name varchar(35),
	@subscriber_middle_name varchar(35),
	@subscriber_date_birth date,
	@subscriber_phone_number varchar(5),
	@subscriber_space int = 1
)
as
	if exists(
	select 
		sub.subscriber_id
	from
		subscriber sub
	where
		sub.subscriber_name = @subscriber_name
		and sub.subscriber_middle_name = @subscriber_middle_name
		and sub.subscriber_date_birth = @subscriber_date_birth
		and sub.subscriber_phone_number = @subscriber_phone_number)
		begin
			RAISERROR ('Error! Dublication of subscriber.', 16, 1);  
		end
	else
		begin
	insert into
		subscriber
		(	subscriber_name,
			subscriber_middle_name,
			subscriber_date_birth,
			subscriber_phone_number,
			subscriber_space
		) 
		values 
			(	
			@subscriber_name,
			@subscriber_middle_name,
			@subscriber_date_birth,
			@subscriber_phone_number,
			@subscriber_space
			);
		end
go 


exec lab_task_insert 'John', 'Maryck', '1995-02-25', '044986', 2

--EXEC What_DB_is_this 0;