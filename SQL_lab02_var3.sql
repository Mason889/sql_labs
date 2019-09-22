ALTER TABLE employee
	ADD CONSTRAINT fs_employee_date_hiring CHECK (employee_date_hiring > '01.01.2000');
ALTER TABLE employee
	ADD CONSTRAINT fs_employee_department FOREIGN KEY (employee_department_id) REFERENCES department(department_id) ON DELETE CASCADE;
ALTER TABLE employee
	ADD Single VARCHAR(3) NULL DEFAULT 'Yes';

--EXEC SP_RENAME 'employee', 'employee_var03';
--EXEC SP_RENAME 'employee_var03', 'employee';		    last point of LAB work









