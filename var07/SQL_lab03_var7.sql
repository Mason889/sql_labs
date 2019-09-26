INSERT INTO department(department_name) VALUES
('OPS');
INSERT INTO department(department_name) VALUES
('Call-center');
INSERT INTO department(department_name) VALUES
('NET');
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
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_depar, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Axel', 'Petrovych', 1, '1990-09-28', '04449');
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_depar, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Axelesa', 'Ivanovna', 1, '1991-02-12', '04450');
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_depar, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Anna', 'Ivanova', 2, '1992-02-12', '04451');
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_depar, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Helena', 'Brug', 3, '1990-05-20', '04452');
INSERT INTO subscriber (subscriber_name, subscriber_middle_name, subscriber_depar, subscriber_date_birth, subscriber_phone_number) 
VALUES
('Galina', 'Ivanovna', 2, '1999-06-10', '04453');
