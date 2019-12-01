use lab_db_var7
go

DROP VIEW FirstView, SecondView, ThirdView, FourthView
GO


CREATE VIEW FirstView
AS 
	SELECT
		subs.subscriber_name, subs.subscriber_middle_name, subs.subscriber_phone_number, dep.department_name
	FROM
		subscriber subs
		inner join
			dep_space deps
		on subs.subscriber_space = deps.dep_id
		inner join
			department dep
		on dep.department_id = deps.dep_id
-- WITH CHECK OPTION			-- *to validate using of insert view when the data modification should be correspond to check conditions*
GO

CREATE VIEW SecondView
AS
	SELECT
		subscriber_name, subscriber_middle_name, subscriber_phone_number, dep_space_name
	FROM
		subscriber subs
		inner join dep_space ds
		on ds.dep_id = subs.subscriber_space
GO

CREATE VIEW ThirdView
AS 
	SELECT
		COUNT(subscriber_name) AS number_of_subscribers, department_name
	FROM
		subscriber subs
		inner join dep_space deps 
		on subs.subscriber_space = deps.dep_id
		inner join department dep
		on dep.department_id = deps.dep_id
	GROUP BY
		department_name
GO

create view FourthView
as
	SELECT
		COUNT(subscriber_name) AS number_of_subscribers, dep_space_name
	FROM
		subscriber subs
	INNER JOIN
		dep_space ds 
	ON
		subs.subscriber_space = ds.dep_id
	GROUP BY
		dep_space_name
go


SELECT 
	subscriber_name, subscriber_middle_name, subscriber_phone_number, department_name
FROM
	FirstView
ORDER BY
	department_name						-- access test for first point
--------------------------------------------
SELECT 
	subscriber_name, subscriber_middle_name, subscriber_phone_number, dep_space_name
FROM
	SecondView							-- access test for second point
ORDER BY
	dep_space_name
--------------------------------------------
SELECT
	number_of_subscribers, department_name
FROM
	ThirdView							-- random test for third point
--------------------------------------------
select
	number_of_subscribers, dep_space_name
from
	FourthView