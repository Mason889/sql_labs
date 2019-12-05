use master
go

SELECT *								--	Showing
FROM sys.symmetric_keys;				--	existing symmetric keys
GO										--	that was assigned for database
--------------------------------------

use lab_db_var4
go

create master key encryption by password = '1234';				-- creating of new master-key
go

create certificate cert_lab09 with subject = 'Protect Data'		-- creating of certificate with metadate field 'Protect Data'
go

create symmetric key sym_key_lab09								-- creating of symmetric key 
	with														-- enctryption standard AES_128
		algorithm = AES_128
	encryption 
		by certificate cert_lab09								-- using of earlier created certificate cert_lab09
go

alter table dbo.employee										-- adding new column for future encryptied data
	add employee_name_encrypt varbinary(MAX) NULL				-- *in my case : firstname of employee*
GO



-- encryption procedure
open symmetric key sym_key_lab09
	decryption
		by certificate cert_lab09;
go

UPDATE dbo.employee
	SET employee_name_encrypt = EncryptByKey (Key_GUID('sym_key_lab09'), employee_name)
	from dbo.employee;
go
-- close encryption procedure
close symmetric key sym_key_lab09;
go

---------------------------------------- decryption

open symmetric key sym_key_lab09
decryption by certificate cert_lab09
go

select 
	emp.employee_id,
	emp.employee_name_encrypt as 'encrypted firstname',
	CONVERT(varchar, DecryptByKey(emp.employee_name_encrypt)) 
	AS 'decrypted firstname'	
from employee emp


close symmetric key sym_key_lab09
go