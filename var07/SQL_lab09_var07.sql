----------------	deleting of logins
drop login Alexey
drop login Jeff
----------------

create login Alexey
   with password = 'Alexey',
   default_database = lab_db_var7;

create login Jeff
	with password = 'Jeff',
	default_database = lab_db_var7;

use lab_db_var7
go

------------		deleting of users
drop user Alexey
drop user Jeff
------------

create user Alexey for login Alexey
create user Jeff for login Jeff 

execute sp_addrolemember 'db_ddladmin', 'Alexey';		-- permissions on executing of T-SQL query for Alexey
execute sp_addrolemember 'db_ddladmin', 'Jeff';			-- permissions on executing of T-SQL query for Jeff
-- delete assign of db_ddladmin role on Alexey and Jeff users
execute sp_droprolemember 'db_ddladmin', 'Alexey';
execute sp_droprolemember 'db_ddladmin', 'Jeff';

grant execute on dbo.lab_task_insert to Alexey;
-- revoke of permissions on executing of lab_task_insert procedure
revoke execute on object::dbo.lab_task_insert to Alexey;

grant select, insert on dbo.subscriber to Jeff;				-- add permissions for select & insert inside of dbo.employee
revoke select, insert on dbo.subscriber to Jeff;				-- revoke permissions for select & insert inside of dbo.employee