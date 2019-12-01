use lab_db_var7
go

drop trigger trigger_first
go

create trigger trigger_first
	on subscriber  
		for INSERT 
	as  
	if exists (
	--select * into tempdate from employee
	--alter table tempdate 
	--	drop column employee_id, employee_position, employee_department, employee_group, Single, employee_date_hiring, employee_date_fired, employee_gender
	
	select *
				from
					subscriber subs
				where
		--		group by (*)
		--		having count(*) > 1
				subs.subscriber_phone_number in (select subs.subscriber_phone_number from subscriber subs group by subs.subscriber_phone_number having count(*)>1)
				and subs.subscriber_middle_name in (select subs.subscriber_middle_name from subscriber subs group by subs.subscriber_middle_name having count(*)>1)
				and subs.subscriber_name in (select subs.subscriber_name from subscriber subs group by subs.subscriber_name having count(*)>1)
				and subs.subscriber_date_birth in (select subs.subscriber_date_birth from subscriber subs group by subs.subscriber_date_birth having count(*)>1)
				 )
	begin
	RAISERROR ('Error! Dublication of employee.', 16, 1);  
	ROLLBACK TRANSACTION;  
	RETURN   
	END;  
	GO  


