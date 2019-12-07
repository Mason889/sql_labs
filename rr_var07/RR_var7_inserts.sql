use rr_var7
go

------------------------Storage info
insert into	storage (storage_name, storage_adress) values ('first-auto-parts', 'St. Lawrence str.')
insert into	storage (storage_name, storage_adress) values ('second-electricity-components', '12th str.')
------------------------Lines
insert into line (line_storage_id) values (1);
insert into line (line_storage_id) values (1);
insert into line (line_storage_id) values (2);
insert into line (line_storage_id) values (2);
-----------------------Rack-type
insert into rack_type(rack_type_name) values ('car-light-components');
insert into rack_type(rack_type_name) values ('car-engine-components');
insert into rack_type(rack_type_name) values ('electricity-light-components');
insert into rack_type(rack_type_name) values ('electricity-wiring-components');
------------------------Rack
insert into rack(rack_line_id, rack_type) values (1, 1);
insert into rack(rack_line_id, rack_type) values (2, 2);
insert into rack(rack_line_id, rack_type) values (1, 3);
insert into rack(rack_line_id, rack_type) values (3, 1);
insert into rack(rack_line_id, rack_type) values (3, 3);
insert into rack(rack_line_id, rack_type) values (4, 4);
------------------------Product-scale
insert into product_scale(product_scale_name) values ('mililiter');
insert into product_scale(product_scale_name) values ('piece');
insert into product_scale(product_scale_name) values ('meter');
------------------------Product-scale
--- first storage - lines - 1 and 2 - racks: 1 - 3
insert into product(product_name, product_rack, product_scale, product_amount) values ('Audi-A3-2016-R-F-light', 1, 2, 10);
insert into product(product_name, product_rack, product_scale, product_amount) values ('Audi-A3-2016-L-F-light', 1, 2, 15);
insert into product(product_name, product_rack, product_scale, product_amount) values ('Audi-A3-2018-engine-oil', 2, 1, 100000);
insert into product(product_name, product_rack, product_scale, product_amount) values ('Audi-A4-2018-engine-piston-head', 2, 2, 100);
insert into product(product_name, product_rack, product_scale, product_amount) values ('Audi-A4-2018-engine-spark-plug', 2, 2, 80);
insert into product(product_name, product_rack, product_scale, product_amount) values ('Audi-A4-2018-L-turn-signal', 1, 2, 15);
insert into product(product_name, product_rack, product_scale, product_amount) values ('Audi-A4-2018-R-turn-signal', 1, 2, 20);
insert into product(product_name, product_rack, product_scale, product_amount) values ('Lamps-E16', 3, 2, 100);
insert into product(product_name, product_rack, product_scale, product_amount) values ('Lamps-E12', 3, 2, 150);
insert into product(product_name, product_rack, product_scale, product_amount) values ('Audi-A3-2016-LED-Light', 1, 3, 1050);
--- second storage - lines - 3 and 4 - racks: 4 - 6
insert into product(product_name, product_rack, product_scale, product_amount) values ('Audi-A3-2016-R-F-light', 4, 2, 20);
insert into product(product_name, product_rack, product_scale, product_amount) values ('Audi-A3-2016-L-F-light', 4, 2, 5);
insert into product(product_name, product_rack, product_scale, product_amount) values ('Lamps-E16', 5, 2, 200);
insert into product(product_name, product_rack, product_scale, product_amount) values ('Lamps-E12', 5, 2, 350);
insert into product(product_name, product_rack, product_scale, product_amount) values ('Lamps-G20', 5, 2, 50);
insert into product(product_name, product_rack, product_scale, product_amount) values ('Lamps-K1', 5, 2, 150);
insert into product(product_name, product_rack, product_scale, product_amount) values ('Rubber-for-wiring', 6, 1, 100500);
insert into product(product_name, product_rack, product_scale, product_amount) values ('Twisted-pair-Cat45', 6, 3, 10000);
insert into product(product_name, product_rack, product_scale, product_amount) values ('Twisted-pair-Cat72', 6, 3, 1500);
insert into product(product_name, product_rack, product_scale, product_amount) values ('Audi-A3-2016-LED-Light', 4, 3, 150);
------------------------ IPT over
insert into p_order(p_order_client_name, p_order_client_surname, p_order_product, p_order_amount) values ('Alexey', 'Petrov', 1, 1);
insert into p_order(p_order_client_name, p_order_client_surname, p_order_product, p_order_amount) values ('Alexey', 'Petrov', 2, 1);
insert into p_order(p_order_client_name, p_order_client_surname, p_order_product, p_order_amount) values ('Max', 'Sundy', 8, 10);
insert into p_order(p_order_client_name, p_order_client_surname, p_order_product, p_order_amount) values ('Max', 'Sundy', 14, 4);
insert into p_order(p_order_client_name, p_order_client_surname, p_order_product, p_order_amount) values ('Max', 'Sundy', 15, 10);
insert into p_order(p_order_client_name, p_order_client_surname, p_order_product, p_order_amount) values ('Sergi', 'Naikha', 3, 1000);
insert into p_order(p_order_client_name, p_order_client_surname, p_order_product, p_order_amount) values ('Sergi', 'Naikha', 4, 6);
insert into p_order(p_order_client_name, p_order_client_surname, p_order_product, p_order_amount) values ('Sergi', 'Naikha', 5, 6);
insert into p_order(p_order_client_name, p_order_client_surname, p_order_product, p_order_amount) values ('Sergi', 'Naikha', 6, 1);
insert into p_order(p_order_client_name, p_order_client_surname, p_order_product, p_order_amount) values ('Sergi', 'Naikha', 7, 1);
insert into p_order(p_order_client_name, p_order_client_surname, p_order_product, p_order_amount) values ('Sergi', 'Naikha', 20, 5);
insert into p_order(p_order_client_name, p_order_client_surname, p_order_product, p_order_amount) values ('Anton', 'Haida', 17, 1000);
insert into p_order(p_order_client_name, p_order_client_surname, p_order_product, p_order_amount) values ('Anton', 'Haida', 18, 100);
insert into p_order(p_order_client_name, p_order_client_surname, p_order_product, p_order_amount) values ('Anton', 'Haida', 19, 120);
insert into p_order(p_order_client_name, p_order_client_surname, p_order_product, p_order_amount) values ('Anton', 'Haida', 3, 100);
		-----------------------Exams
	--insert into exam(lesson, student, result) values (1, 1, 65)
	--insert into exam(lesson, student, result) values (2, 1, 90)
	--insert into exam(lesson, student, result) values (1, 2, 100)
	--insert into exam(lesson, student, result) values (2, 2, 95)
	--insert into exam(lesson, student, result) values (1, 3, 76)
	--insert into exam(lesson, student, result) values (2, 3, 84)
	--insert into exam(lesson, student, result) values (1, 4, 60)
	--insert into exam(lesson, student, result) values (2, 4, 82)
	--insert into exam(lesson, student, result) values (1, 5, 60)
	--insert into exam(lesson, student, result) values (5, 5, 60)
	--insert into exam(lesson, student, result) values (1, 6, 97)
	--insert into exam(lesson, student, result) values (5, 6, 93)
	--insert into exam(lesson, student, result) values (5, 7, 70)
	--insert into exam(lesson, student, result) values (6, 7, 61)
	--insert into exam(lesson, student, result) values (5, 8, 60)
	--insert into exam(lesson, student, result) values (6, 8, 91)
	--insert into exam(lesson, student, result) values (8, 9, 60)
	--insert into exam(lesson, student, result) values (8, 10, 90)
	--insert into exam(lesson, student, result) values (7, 11, 89)
	--insert into exam(lesson, student, result) values (7, 12, 64)
	--insert into exam(lesson, student, result) values (6, 13, 72)
	--insert into exam(lesson, student, result) values (6, 14, 70)
	--insert into exam(lesson, student, result) values (5, 15, 87)
	--insert into exam(lesson, student, result) values (5, 16, 100)
	--insert into exam(lesson, student, result) values (6, 17, 89)
	--insert into exam(lesson, student, result) values (6, 18, 73)
	--insert into exam(lesson, student, result) values (5, 19, 72)
	--insert into exam(lesson, student, result) values (5, 20, 88)
	--insert into exam(lesson, student, result) values (5, 21, 100)