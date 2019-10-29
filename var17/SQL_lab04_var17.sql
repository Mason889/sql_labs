use Ñhampiomship
go

select num.ID_Players,sum(num.NumberOfGoals)
	from NumberOfGoals num
	group by num.ID_Players

select pl.Surname, pl.Teams, CE.SS
	from Players pl
	inner join
	(select num.ID_Players,sum(num.NumberOfGoals) as SS
	from NumberOfGoals num
	group by num.ID_Players) as CE
	on CE.ID_Players = pl.ID_Players
	group by 
		pl.Teams, pl.Surname, CE.SS
	having 
		CE.SS >= all(select sum(num.NumberOfGoals) as SS
	from NumberOfGoals num
	group by num.ID_Players)


select pl.Teams, sum(CE.SS) as RR
	from Players pl
	inner join
	(select num.ID_Players,sum(num.NumberOfGoals) as SS
	from NumberOfGoals num
	group by num.ID_Players) as CE
	on CE.ID_Players = pl.ID_Players
	group by 
		pl.Teams
	having 
		sum(CE.SS) >= all(
	select 
		sum(CE.SS) as RR
	from 
		Players pl
		inner join
		(select	
			num.ID_Players, sum(num.NumberOfGoals) as SS
		from NumberOfGoals num
			group by num.ID_Players)
		as CE
		on CE.ID_Players = pl.ID_Players
		group by 
		pl.Teams)