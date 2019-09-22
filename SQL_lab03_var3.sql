INSERT INTO department(department_name, department_kind) VALUES
('NOC', 'OPS');
INSERT INTO department(department_name, department_kind) VALUES
('PythonDevs', 'Engineering');
INSERT INTO department(department_name, department_kind) VALUES
('Front-end', 'Engineering');
INSERT INTO department(department_name, department_kind) VALUES
('Back-end', 'Engineering');
INSERT INTO department(department_name, department_kind) VALUES
('QA', 'QA/QC');
INSERT INTO department(department_name, department_kind) VALUES
('QC', 'QA/QC');
------------------------------------------------------------------
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_hb_date, employee_address, employee_position, employee_department, employee_date_hiring) 
VALUES 
('Mason', 'Coleman', 'M', '1980-10-09', '9th Str.', 'CTO', 'OPS', '2012-04-28');
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_hb_date, employee_address, employee_position, employee_department, employee_date_hiring) 
VALUES 
('John', 'Clapton', 'M', '1989-04-05', 'Backer Str.', 'Sr. Python Software ', 'Engineering', '2009-03-12');
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_hb_date, employee_address, employee_position, employee_department, employee_date_hiring) 
VALUES 
('Alex', 'Cason', 'M', '1984-12-20', '12th Str.', 'Sr. Fullstack developer', 'Engineering', '2014-06-10');
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_hb_date, employee_address, employee_position, employee_department, employee_date_hiring) 
VALUES 
('Anna', 'Camerron', 'F', '1995-12-20', '20th Str.', 'DevOps Engineering', 'OPS', '2015-03-14');
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_hb_date, employee_address, employee_position, employee_department, employee_date_hiring) 
VALUES 
('Amelia', 'Johnson', 'F', '2003-04-12', '27th Str.', 'NONE', 'NONE', GETDATE());