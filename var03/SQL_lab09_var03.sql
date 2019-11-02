----------------	deleting of logins
drop login Mason
drop login Bill
----------------

create login Mason
   with password = 'Mason',
   default_database = lab_db_var3;

create login Bill
	with password = 'Bill',
	default_database = lab_db_var3;

use lab_db_var3
go

------------		deleting of users
drop user Bill
drop user Mason
------------

create user Bill for login Bill
create user Mason for login Mason 

execute sp_addrolemember 'db_ddladmin', 'Bill';		-- permissions on executing of T-SQL query for Bill
execute sp_addrolemember 'db_ddladmin', 'Mason';	-- permissions on executing of T-SQL query for Mason
-- delete assign of db_ddladmin role on Bill and Mason users
execute sp_droprolemember 'db_ddladmin', 'Bill';
execute sp_droprolemember 'db_ddladmin', 'Mason';

grant execute on dbo.lab_task_insert to Bill;
-- revoke of permissions on executing of lab_task_insert procedure
revoke execute on object::dbo.lab_task_insert to Bill;

grant select, insert on dbo.employee to Mason;				-- add permissions for select & insert inside of dbo.employee
revoke select, insert on dbo.employee to Mason;				-- revoke permissions for select & insert inside of dbo.employee


--SELECT HAS_DBACCESS('lab_db_var3');

--select * from sys.schemas