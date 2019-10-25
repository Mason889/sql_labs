use lab_db_var3
go


ALTER TABLE employee
	ADD CONSTRAINT at_employee_date_hiring_valid CHECK (employee_date_fired > employee_date_hiring);
ALTER TABLE employee
	ADD CONSTRAINT at_emplyee_valid_age CHECK ((DATEDIFF(YEAR, employee_hb_date ,GETDATE())) >= 18);
--ALTER TABLE employee
--	ADD CONSTRAINT fs_employee_department FOREIGN KEY (employee_department_id) REFERENCES department(department_id) ON DELETE CASCADE;
ALTER TABLE employee
	ADD Single VARCHAR(3) NULL DEFAULT 'No';

--EXEC SP_RENAME 'employee', 'employee_var03';
--EXEC SP_RENAME 'employee_var03', 'employee';		    last point of LAB work









