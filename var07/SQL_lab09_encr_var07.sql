use master
go

SELECT *								--	Showing
FROM sys.symmetric_keys;				--	existing symmetric keys
GO										--	that was assigned for database
--------------------------------------

use lab_db_var7
go

create master key encryption by password = 'var07-lab09';					-- creating of new master-key
go

create certificate cert_lab09 with subject = 'Protect Data'					-- creating of certificate with metadate field 'Protect Data'
go

create symmetric key sym_key_lab09_var07									-- creating of symmetric key 
	with																	-- enctryption standard AES_128
		algorithm = AES_128
	encryption 
		by certificate cert_lab09											-- using of earlier created certificate cert_lab09
go

alter table dbo.subscriber													-- adding new column for future encryptied data
	add subscriber_phone_number_encrypt varbinary(MAX) NULL					-- *in my case : firstname of employee*
GO



-- encryption procedure
open symmetric key sym_key_lab09_var07
	decryption
		by certificate cert_lab09;
go

UPDATE dbo.subscriber
	SET subscriber_phone_number_encrypt = EncryptByKey (Key_GUID('sym_key_lab09_var07'), subscriber_phone_number)
	from dbo.subscriber;
go
-- close encryption procedure
close symmetric key sym_key_lab09_var07;
go

---------------------------------------- decryption

open symmetric key sym_key_lab09_var07
decryption by certificate cert_lab09
go

select 
	sub.subscriber_id,
	sub.subscriber_phone_number_encrypt as 'encrypted phone number',
	CONVERT(varchar, DecryptByKey(sub.subscriber_phone_number_encrypt)) 
	AS 'decrypted phone number'	
from subscriber sub


close symmetric key sym_key_lab09_var07
go