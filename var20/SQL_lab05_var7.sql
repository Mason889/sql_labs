use lab_db_var7
go

select 
	depk.dep_space_kind_name, count(subs.subscriber_id) as number
from 
	dep_space_kind depk
	inner join dep_space deps
	on deps.dep_space_kind = depk.dep_space_kind_id
	inner join subscriber subs
	on deps.dep_space_id = subs.subscriber_space
group by
	depk.dep_space_kind_name
having
	count(subs.subscriber_id) >= all(
		select 
			 count(subs.subscriber_id) as number
		from
			subscriber subs
			inner join dep_space deps
			on deps.dep_space_id = subs.subscriber_space
			inner join dep_space_kind depk
			on depk.dep_space_kind_id = deps.dep_space_kind
		group by
			depk.dep_space_kind_name
	)
	