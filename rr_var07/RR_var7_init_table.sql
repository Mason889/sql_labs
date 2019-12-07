use rr_var7
go

drop table p_order, product, product_scale, rack, rack_type, line, storage

create table storage (
	storage_id int primary key identity not null,
	storage_name varchar(30) not null,
	storage_adress varchar(40) not null
);

--create table line_type (
--	line_type_id int primary key identity not null,
--	line_type_name varchar(40) not null
--);

create table line (
	line_id int primary key identity not null,
--	line_type int foreign key references line_type(line_type_id),
	line_storage_id int foreign key references storage(storage_id)
);

create table rack_type (
	rack_type_id int primary key identity not null,
	rack_type_name varchar(40) not null
);

create table rack (
	rack_id int primary key identity not null,
	rack_line_id int foreign key references line(line_id),
	rack_type int foreign key references rack_type(rack_type_id)
);

create table product_scale (
	product_scale_id int primary key identity not null,
	product_scale_name varchar(40) not null,
--	product_scale_cost int not null
);

create table product (
	product_id int primary key identity not null,
	product_name varchar(40) not null,
	product_rack int foreign key references rack(rack_id),
	product_scale int foreign key references product_scale(product_scale_id),
	product_amount int not null
);

create table p_order (
	p_order_id int primary key identity not null,
	p_order_client_name varchar(40) not null,
	p_order_client_surname varchar(40) not null,
	p_order_product int foreign key references product(product_id),
	p_order_amount int not null
);