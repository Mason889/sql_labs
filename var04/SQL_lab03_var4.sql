INSERT INTO empgroup(empgroup_name) VALUES
('OPS');
INSERT INTO empgroup(empgroup_name) VALUES
('Finance');
-----------------------------------------------------------------
INSERT INTO department_kind(department_kind_name) VALUES
('Humanitarian');
INSERT INTO department_kind(department_kind_name) VALUES
('Engineering');
INSERT INTO department_kind(department_kind_name) VALUES
('Supply/Administration');
-----------------------------------------------------------------
INSERT INTO department(department_name, department_kind) VALUES
('FL', 1);
INSERT INTO department(department_name, department_kind) VALUES
('IPT', 2);
INSERT INTO department(department_name, department_kind) VALUES
('IASA', 2);
INSERT INTO department(department_name, department_kind) VALUES
('IMQE', 3);
------------------------------------------------------------------
INSERT INTO position(position_name) VALUES
('Aspirante');
INSERT INTO position(position_name) VALUES
('Lecturer');
INSERT INTO position(position_name) VALUES
('Docent');
------------------------------------------------------------------
INSERT INTO lesson(lesson_name) VALUES
('Math');
INSERT INTO lesson(lesson_name) VALUES
('Cryptography');
INSERT INTO lesson(lesson_name) VALUES
('Cloud Solution Engineer');
INSERT INTO lesson(lesson_name) VALUES
('English');
------------------------------------------------------------------
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_address, employee_hb_date, employee_date_hiring, employee_department, employee_group, employee_position, lesson_name) 
VALUES 
('Mason', 'Coleman', 'M', '9th Str.', '1980-10-09', '2012-04-28', 2, 1, 3, 1);
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_address, employee_hb_date, employee_date_hiring, employee_department, employee_group, employee_position, lesson_name) 
VALUES 
('Anna', 'Petrovna', 'F', '10th Str.', '1990-06-12', '2015-03-10', 1, 1, 2, 4);
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_address, employee_hb_date, employee_date_hiring, employee_department, employee_group, employee_position, lesson_name) 
VALUES 
('Maria', 'Schmal', 'F', '9th/24 Str.', '1976-12-10', '2010-07-01', 4, 2, 1, 2);
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_address, employee_hb_date, employee_date_hiring, employee_department, employee_group, employee_position, lesson_name) 
VALUES 
('Alexey', 'Vasylenko', 'M', '12th Str.', '1982-02-20', '2005-04-25', 4, 2, 1, 3);
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_address, employee_hb_date, employee_date_hiring, employee_department, employee_group, employee_position, lesson_name) 
VALUES 
('Nikita', 'Topchiy', 'M', '148th Str.', '1990-03-12', '2014-09-14', 3, 1, 2, 3);
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_address, employee_hb_date, employee_date_hiring, employee_date_fired, employee_department, employee_group, employee_position, lesson_name) 
VALUES 
('Alexey', 'Novikov', 'M', 'Victory Str.', '1980-05-24', '2011-08-29', '2015-10-25', 1, 1, 2, 4);
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_address, employee_hb_date, employee_date_hiring, employee_department, employee_group, employee_position, lesson_name) 
VALUES 
('Anna', 'Vashylevska', 'F', 'Fine Str.', '1994-05-24', '2018-04-10', 1, 1, 2, 4);
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_address, employee_hb_date, employee_date_hiring, employee_department, employee_group, employee_position, lesson_name) 
VALUES 
('Hanna', 'Tired', 'F', '11 Str.', '1987-06-24', '2014-03-02', 4, 2, 1, 2);
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_address, employee_hb_date, employee_date_hiring, employee_date_fired, employee_department, employee_group, employee_position, lesson_name) 
VALUES 
('Sam', 'Thompson', 'M', 'Victory Str.', '1982-05-24', '2012-03-20', '2015-10-25', 1, 1, 2, 4);
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_address, employee_hb_date, employee_date_hiring, employee_department, employee_group, employee_position, lesson_name) 
VALUES 
('Herbert', 'Lompsone', 'M', '14 Str.', '1990-02-01', '2017-09-04', 4, 2, 1, 2);
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_address, employee_hb_date, employee_date_hiring, employee_department, employee_group, employee_position, lesson_name) 
VALUES 
('Hans', 'Lomps', 'M', '15 Str.', '1980-04-02', '2015-04-04', 1, 1, 2, 4);
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_address, employee_hb_date, employee_date_hiring, employee_department, employee_group, employee_position, lesson_name) 
VALUES 
('Mason', 'Johnson', 'M', 'Saint Lawrence blvd.', '1992-05-23', '2016-05-01', 4, 2, 1, 3);
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_address, employee_hb_date, employee_date_hiring, employee_department, employee_group, employee_position, lesson_name) 
VALUES 
('Elisaveta', 'Pudim', 'F', 'North str.', '1994-01-20', '2018-08-05', 3, 1, 2, 2);
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_address, employee_hb_date, employee_date_hiring, employee_date_fired, employee_department, employee_group, employee_position, lesson_name) 
VALUES 
('Kevin', 'Spacy', 'M', 'Defeat Str.', '1987-06-12', '2011-08-30', '2016-11-08', 1, 1, 2, 4);
INSERT INTO employee(employee_name, employee_middlename, employee_gender, employee_address, employee_hb_date, employee_date_hiring, employee_department, employee_group, employee_position, lesson_name) 
VALUES 
('Kateryna', 'Sydorenko', 'F', '12th Str.', '1987-06-12', '2019-01-10', 4, 2, 1, 1);

--INSERT empgroup(empgroup_name)
--VALUES ('test');
--INSERT position(position_name) VALUES ('test');
--INSERT department_kind(department_kind_name) VALUES ('abcd');
--INSERT department(department_name, department_kind) VALUES ('test',1);

--INSERT employee(employee_name, employee_middlename, employee_gender, employee_hb_date, employee_date_hiring, employee_date_fired, employee_address, employee_group, employee_department, employee_position) 
--VALUES ('as', 'ds', 'M', '2010-04-25', '2018-04-23', '2017-02-28', 'bak str', 1, 1, 1);
