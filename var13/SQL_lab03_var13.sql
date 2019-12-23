use lab_db_var13
go
---------------
INSERT INTO specialisation(specialisation_title, specialisation_price) VALUES
('cybersecurity', 20000);
INSERT INTO specialisation(specialisation_title, specialisation_price) VALUES
('primat', 15000);
INSERT INTO specialisation(specialisation_title, specialisation_price) VALUES
('priphys', 13000);

INSERT INTO student_group(student_group_title, student_group_specialisation, student_group_course, student_group_semester) VALUES
('FB-91', 1, 1, 1),
('FB-74', 1, 3, 1),
('FI-82', 2, 2, 1),
('FI-73', 2, 3, 1),
('FF-61', 3, 4, 1);

INSERT INTO student(student_fname, student_lname, student_gender, student_dr, student_group) 
VALUES 
('Kostya', 'Zaigraiev', 'M', '2000-04-23', 2),
('Mason', 'Coleman', 'M', '1999-10-03', 5),
('Anna', 'Petrovna', 'F', '2002-06-12', 3),
('Nikita', 'Topchiy', 'M', '2000-03-04', 4),
('Alexey', 'Novikov', 'M', '2002-05-24', 1),
('Anna', 'Vashylevska', 'F', '1999-10-24', 2),
('Hanna', 'Tired', 'F', '2000-06-24', 4),
('Sam', 'Thompson', 'M', '2002-05-24', 1),
('Herbert', 'Lompsone', 'M','2001-02-01', 3),
('Hans', 'Lomps', 'M','2000-04-02', 2),
('Elisaveta', 'Pudim', 'F', '2001-01-20', 3),
('Saeyong', 'Choi', 'M', '2000-06-11', 4),
('Darusya', 'Leluch', 'F', '2002-03-12', 1),
('Lil','Pip', 'M', '2000-05-28', 2),
('Kevin', 'Spacy', 'M', '2001-06-12', 3);

insert into payment_state(payment_state_student, payment_state, payment_state_semester)
values
(1, 1, 1),
(2, 0, 1),
(3, 1, 1),
(4, 1, 1),
(5, 0, 1),
(6, 0, 1),
(7, 1, 1),
(8, 0, 1),
(9, 1, 1),
(10, 1, 1),
(11, 0, 1),
(12, 1, 1),
(13, 1, 1),
(14, 0, 1),
(15, 1, 1);

