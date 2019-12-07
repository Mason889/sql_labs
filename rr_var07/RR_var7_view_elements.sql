use rr_var7
go

create view list_first 
as 
	select 
		s.storage_name, rt.rack_type_name, p.product_name
	from product p 
	inner join
		rack r
		on p.product_rack = r.rack_id
	inner join 
		rack_type rt
		on rt.rack_type_id = r.rack_type
	inner join
		line l
		on l.line_id = r.rack_line_id
	inner join
		storage s
		on s.storage_id = l.line_storage_id
	group by
		s.storage_name, rt.rack_type_name, p.product_name
with check option
go

select * from list_first
go



create view list_second
as 
	select 
		p.product_name
	from product p 
	inner join
		rack r
		on p.product_rack = r.rack_id
	inner join 
		rack_type rt
		on rt.rack_type_id = r.rack_type
	inner join
		line l
		on l.line_id = r.rack_line_id
	inner join
		storage s
		on s.storage_id = l.line_storage_id
	group by
		s.storage_id, p.product_name
	having
		s.storage_id <> 1		-- shows only products that kept on second storage
with check option
go

select * from list_second 
go


drop proc calculation
go

create proc calculation
(
	@p_order_id int,
	@storage_id int = 1
)
as
	if exists(
		select 
			p.product_amount
		from	
			p_order po
			inner join
				product p
				on po.p_order_product = p.product_id
			inner join 
				rack r
				on r.rack_id = p.product_rack
			inner join
				line l
				on l.line_id = r.rack_line_id
			inner join
				storage s
				on s.storage_id = l.line_storage_id
			group by
				po.p_order_id, p.product_amount, s.storage_id, l.line_id, r.rack_id
			having
				po.p_order_id = @p_order_id
				and s.storage_id = @storage_id
				and p.product_amount >= (
				select 
					po.p_order_amount
				from 
					p_order po
				where
					po.p_order_id = @p_order_id
				)
		)
	begin
		print('On the storage sufficient number of products');
	end
	else 
		begin
			print('On the storage not sufficient number of products for this order');
		end
go

exec calculation 16, 1		-- (not correct work) only for 16 order where volume of order oil > that oil on storage 1
go							-- correct variants other orders with correct storage

create proc correction
(
	@product_id int,
	@new_amount int
)
as
	begin;
	update 
		product 
	set 
		product_amount = @new_amount
	where 
		product_id = @product_id
	end;
go

exec correction 1, 100
go

-- Reports

select 
	s.storage_name, p.product_name, p.product_amount, ps.product_scale_name
from
	product p
	inner join
		product_scale ps
		on ps.product_scale_id = p.product_scale
	inner join
		rack r
		on r.rack_id = p.product_rack
	inner join
		line l
		on l.line_id = r.rack_line_id
	inner join 
		storage s
		on s.storage_id = l.line_storage_id
group by
	s.storage_name, p.product_name, p.product_amount, ps.product_scale_name


select
	s.storage_name, p.product_name, po.p_order_amount, ps.product_scale_name
from
	p_order po
	inner join
		product p
		on p.product_id = po.p_order_product
	inner join
		product_scale ps
		on ps.product_scale_id = p.product_scale
	inner join
		rack r
		on r.rack_id = p.product_rack
	inner join
		line l
		on l.line_id = r.rack_line_id
	inner join 
		storage s
		on s.storage_id = l.line_storage_id
group by
	s.storage_name, p.product_name, po.p_order_amount, ps.product_scale_name
		

select
	po.p_order_client_name, po.p_order_client_surname, sum(po.p_order_amount) as sum_num
from
	p_order po
group by
	po.p_order_client_name, po.p_order_client_surname


select
	s.storage_name, l.line_id, r.rack_id, rt.rack_type_name, p.product_name, p.product_amount
from
		product p
		inner join
			product_scale ps
			on ps.product_scale_id = p.product_scale
		inner join
			rack r
			on r.rack_id = p.product_rack
		inner join
			rack_type rt
			on rt.rack_type_id = r.rack_type
		inner join
			line l
			on l.line_id = r.rack_line_id
		inner join 
			storage s
			on s.storage_id = l.line_storage_id
group by
	s.storage_name, l.line_id, r.rack_id, rt.rack_type_name, p.product_name, p.product_amount