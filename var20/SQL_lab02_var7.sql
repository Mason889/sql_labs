use lab_db_var7
go


ALTER TABLE subscriber
	ADD CONSTRAINT ISP_subscriber_date_birth CHECK (DATEDIFF(YEAR, subscriber_date_birth, GETDATE()) >= 18);
ALTER TABLE subscriber
	ADD CONSTRAINT ISP_valid_phone_number CHECK (subscriber_phone_number LIKE '044%' AND LEN(subscriber_phone_number) = 5)

--ALTER TABLE subscriber
--	ADD CONSTRAINT ISP_subscriber_department_id FOREIGN KEY (subscriber_depar_id) REFERENCES department(department_id) ON DELETE CASCADE;
ALTER TABLE subscriber
	ADD Single VARCHAR(3) NOT NULL DEFAULT 'Так';
	










