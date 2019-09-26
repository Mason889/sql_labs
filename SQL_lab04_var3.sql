SELECT employee_name, employee_middlename, department_name, department_kind_name FROM [lab_db_var3].[dbo].[employee] emp, [lab_db_var3].[dbo].[department] dep, [lab_db_var3].[dbo].[department_kind] dep_kind WHERE emp.employee_department = dep.department_id AND dep.department_kind = dep_kind.department_kind_id ORDER BY department_name -- AND dep.department_name IN ('FL') additional for first task where i should output info about persons on each department
SELECT department_name, AVG(DATEDIFF(YEAR, employee_hb_date, GETDATE())) AS age FROM [lab_db_var3].[dbo].[employee] emp LEFT OUTER JOIN [lab_db_var3].[dbo].[department] dep ON emp.employee_department = dep.department_id GROUP BY department_name
SELECT employee_name, employee_middlename, department_kind_name, empgroup_name FROM [lab_db_var3].[dbo].[employee] emp, [lab_db_var3].[dbo].[department] dep, [lab_db_var3].[dbo].[department_kind] dep_kind, [lab_db_var3].[dbo].[empgroup] WHERE emp.employee_department = dep.department_id AND dep.department_kind = dep_kind.department_kind_id AND emp.employee_group = empgroup.emgroup_id ORDER BY empgroup.empgroup_name, department_kind_name

--SELECT AVG(DATEDIFF(YEAR, (SELECT employee_hb_date FROM [lab_db_var3].[dbo].[employee] emp, [lab_db_var3].[dbo].[department] dep WHERE emp.employee_department = dep.department_id), GETDATE()))

--SELECT employee_name, employee_middlename, employee_position FROM [lab_db_var3].[dbo].[employee] WHERE employee_department=ANY	-- you can change title of department

--UPDATE [lab_db_var3].[dbo].[employee] SET employee_date_fired = GETDATE() WHERE  DATEDIFF(YEAR, employee_hb_date, GETDATE()) < 18


-- lab05 rewrite select in select - badumts


/*SELECT DATEDIFF(YEAR, employee_hb_date, GETDATE()) AS AVGAge FROM [lab_db_var3].[dbo].[employee]
SELECT DATEDIFF(YEAR, (SELECT employee_date_hiring FROM [lab_db_var3].[dbo].[employee] WHERE employee_department_id = 4), GETDATE()) AS DF_DATE_HIRE
UPDATE [lab_db_var3].[dbo].[employee] SET employee_department_id = (SELECT department_id FROM [lab_db_var3].[dbo].[department] WHERE department_kind in ('OPS')) WHERE employee_department in ('OPS')
--UPDATE [lab_db_var3].[dbo].[employee] SET employee_department_id = (SELECT department_id ) */
