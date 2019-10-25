use lab_db_var3
go

DROP VIEW FirstView, SecondView, ThirdView, fired_emp
GO


CREATE VIEW FirstView
AS 
	SELECT 
	employee_name, employee_middlename, department_name, department_kind_name
FROM 
	[lab_db_var3].[dbo].[employee] emp, [lab_db_var3].[dbo].[department] dep, [lab_db_var3].[dbo].[department_kind] dep_kind
WHERE
	emp.employee_department = dep.department_id 
	AND dep.department_kind = dep_kind.department_kind_id
WITH CHECK OPTION
GO

CREATE VIEW SecondView
AS
	SELECT 
		department_name, AVG(DATEDIFF(YEAR, employee_hb_date, GETDATE())) AS age
	FROM
		[lab_db_var3].[dbo].[employee] emp
	LEFT OUTER JOIN
		[lab_db_var3].[dbo].[department] dep 
		ON emp.employee_department = dep.department_id
	GROUP BY department_name
GO
CREATE VIEW ThirdView
AS 
	SELECT 
		employee_name, employee_middlename, department_kind_name, empgroup_name
	FROM
		employee emp
		INNER JOIN
		department dep ON emp.employee_department = dep.department_id
		INNER JOIN
		department_kind dep_kind ON dep.department_kind = dep_kind.department_kind_id
		INNER JOIN
		empgroup ON emp.employee_group = empgroup.emgroup_id
GO

SELECT employee_name FROM FirstView ORDER BY department_name						-- access test for first point
SELECT age FROM SecondView															-- access test for second point
SELECT department_kind_name, empgroup_name FROM ThirdView ORDER BY empgroup_name	-- random test for third point


-- view element for 8th lab
go
create view fired_emp
as
	select 
		emp.employee_id, emp.employee_name, emp.employee_middlename, emp.employee_department, emp.employee_position, emp.employee_date_fired
	from
		employee emp
	where
		emp.employee_date_fired <> ''
go
select * from fired_emp