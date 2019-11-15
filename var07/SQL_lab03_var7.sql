use lab_db_var7
go

INSERT INTO department_type(department_type_name) VALUES
('MAIN TYPE');
-----------------------------
INSERT INTO department(department_name, department_type) VALUES
('OPS', 1);
INSERT INTO department(department_name, department_type) VALUES
('Call-center', 1);
INSERT INTO department(department_name, department_type) VALUES
('NET', 1);
------------------------------------------------------------------
INSERT INTO dep_space_kind(dep_space_kind_name) VALUES
('cabinet');
INSERT INTO dep_space_kind(dep_space_kind_name) VALUES
('ops-room');
------------------------------------------------------------------
INSERT INTO dep_space(dep_space_name, dep_id, dep_space_kind) VALUES
('1034', 1, 1);
INSERT INTO dep_space(dep_space_name, dep_id, dep_space_kind) VALUES
('1035', 2, 1);
INSERT INTO dep_space(dep_space_name, dep_id, dep_space_kind) VALUES
('1042', 3, 2);
------------------------------------------------------------------
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_space, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Axel', 'Petrovych', 1, '1990-09-28', '04449');
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_space, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Axelesa', 'Ivanovna', 1, '1991-02-12', '04450');
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_space, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Anna', 'Ivanova', 2, '1992-02-12', '04451');
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_space, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Helena', 'Brug', 3, '1990-05-20', '04452');
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_space, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Galina', 'Ivanovna', 2, '1999-06-10', '04453');
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_space, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Peter', 'Peterson', 3, '1990-07-15', '04467');
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_space, subscriber_date_birth, subscriber_phone_number) 
VALUES
('John', 'Holland', 2, '1987-03-10', '04400');
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_space, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Alex', 'Alexov', 2, '1985-04-12', '04402');
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_space, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Sam', 'Smith', 3, '1986-11-20', '04489');
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_space, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Sergey', 'Smirnov', 1, '1972-12-11', '04490');
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_space, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Volodymyr', 'Smirnov', 1, '1965-06-06', '04491');
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_space, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Sergii', 'Maiha', 2, '1987-04-28', '04492');
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_space, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Michael', 'Morzho', 3, '1982-09-02', '04493');
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_space, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Monika', 'Malina', 2, '1984-10-11', '04494');
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_space, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Anna', 'Morozova', 1, '1985-04-29', '04495');
