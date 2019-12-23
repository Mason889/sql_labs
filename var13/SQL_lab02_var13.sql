use lab_db_var13
go


ALTER TABLE student
	ADD CONSTRAINT at_student_valid_age CHECK ((DATEDIFF(YEAR, student_dr ,GETDATE())) >= 17);
alter table student
	add constraint at_student_gender check(student_gender like '[MF]')
alter table student_group 
	add constraint at_student_group_course check(student_group_course  between 1 and 6)
--ALTER TABLE employee
--	ADD CONSTRAINT fs_employee_department FOREIGN KEY (employee_department_id) REFERENCES department(department_id) ON DELETE CASCADE;
ALTER TABLE student
	ADD Single VARCHAR(3) NULL DEFAULT 'No';