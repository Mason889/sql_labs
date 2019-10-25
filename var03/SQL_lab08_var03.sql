use lab_db_var3
go

drop trigger trigger_first
go

create trigger trigger_first
	on employee  
		for INSERT  
	as  
	if exists (
	--select * into tempdate from employee
	--alter table tempdate 
	--	drop column employee_id, employee_position, employee_department, employee_group, Single, employee_date_hiring, employee_date_fired, employee_gender
	
	select *
				from
					employee emp
				where
		--		group by (*)
		--		having count(*) > 1
				emp.employee_address in (select emp.employee_address from employee emp group by emp.employee_address having count(*)>1)
				and emp.employee_middlename in (select emp.employee_middlename from employee emp group by emp.employee_middlename having count(*)>1)
				and emp.employee_name in (select emp.employee_name from employee emp group by emp.employee_name having count(*)>1)
				and emp.employee_hb_date in (select emp.employee_hb_date from employee emp group by emp.employee_hb_date having count(*)>1)
				 )
	begin
	RAISERROR ('Error! Dublication of employee.', 16, 1);  
	ROLLBACK TRANSACTION;  
	RETURN   
	END;  
	GO  
	


/*   EXEC msdb.dbo.sp_send_dbmail  
        @profile_name = 'admin',  
        @recipients = 'kostya.zaigraev@gmail.com',  
        @body = 'Don''t forget to print a report for the sales force.',  
        @subject = 'Reminder';  
GO */  