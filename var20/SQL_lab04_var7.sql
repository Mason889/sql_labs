use lab_db_var7
go

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
ORDER BY
	department_name

SELECT
	subscriber_name, subscriber_middle_name, subscriber_phone_number, dep_space_name
FROM
	subscriber subs
	inner join dep_space ds
	on ds.dep_id = subs.subscriber_space
ORDER BY
	dep_space_name

SELECT COUNT(subscriber_name) AS number_of_subscribers, department_name
FROM
	subscriber subs
	inner join dep_space deps 
	on subs.subscriber_space = deps.dep_id
	inner join department dep
	on dep.department_id = deps.dep_id
GROUP BY
	department_name

SELECT COUNT(subscriber_name) AS number_of_subscribers, dep_space_name
FROM
	subscriber subs
INNER JOIN
	dep_space ds 
ON
	subs.subscriber_space = ds.dep_id
GROUP BY
	dep_space_name


--SELECT subscriber_name, subscriber_middle_name, subscriber_phone_number FROM [lab_db_var7].[dbo].[subscriber] WHERE subscriber_depar =(SELECT department_kind FROM [lab_db_var7].[dbo].[department] WHERE department_id = 2)				-- second task
--SELECT COUNT(*) AS count_of_employee FROM [lab_db_var7].[dbo].[subscriber]  WHERE subscriber_depar =(SELECT dep_space_kind FROM [lab_db_var7].[dbo].[dep_space] WHERE dep_space_department_id = 1) 
--SELECT COUNT(*) AS count_of_clients FROM [lab_db_var7].[dbo].[subscriber]  WHERE subscriber_depar =(SELECT department_kind FROM [lab_db_var7].[dbo].[department] WHERE department_id = 2)

--- lab05

--select 
	
 