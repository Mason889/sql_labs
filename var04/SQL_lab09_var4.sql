----------------	deleting of logins
drop login Vika
drop login James
----------------

create login Vika
   with password = 'Vika',
   default_database = lab_db_var4;

create login James
	with password = 'James',
	default_database = lab_db_var4;

use lab_db_var4
go

------------		deleting of users
drop user Bill
drop user Mason
------------

create user Vika for login Vika
create user James for login James

execute sp_addrolemember 'db_ddladmin', 'Vika';		-- permissions on executing of T-SQL query for Vika
execute sp_addrolemember 'db_ddladmin', 'James';	-- permissions on executing of T-SQL query for James

-- delete assign of db_ddladmin role on Bill and Mason users
execute sp_droprolemember 'db_ddladmin', 'Vika';
execute sp_droprolemember 'db_ddladmin', 'James';

grant execute on dbo.lab_task_insert to Vika;
-- revoke of permissions on executing of lab_task_insert procedure
revoke execute on object::dbo.lab_task_insert to Vika;

grant select, insert on dbo.employee to James;				-- add permissions for select & insert inside of dbo.employee
revoke select, insert on dbo.employee to James;				-- revoke permissions for select & insert inside of dbo.employee


--SELECT HAS_DBACCESS('lab_db_var3');

--select * from sys.schemas