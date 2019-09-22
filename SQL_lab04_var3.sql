--SELECT * FROM [lab_db_var3].[dbo].[employee]
SELECT employee_name, employee_middlename,employee_department FROM [lab_db_var3].[dbo].[employee] WHERE employee_department_id=1		-- first task
--SELECT DATEDIFF(YEAR, (SELECT employee_hb_date FROM [lab_db_var3].[dbo].[employee] WHERE employee_department_id=2), GETDATE())
SELECT AVG(DATEDIFF(YEAR, employee_hb_date, GETDATE())) AS AVGAge FROM [lab_db_var3].[dbo].[employee]
SELECT employee_name, employee_middlename, employee_position FROM [lab_db_var3].[dbo].[employee] WHERE employee_department	IN ('OPS')	-- you can change title of department
UPDATE [lab_db_var3].[dbo].[employee] SET employee_date_fired = GETDATE() WHERE  DATEDIFF(YEAR, employee_hb_date, GETDATE()) < 18

-- lab05 rewrite select in select - badumts
SELECT DATEDIFF(YEAR, employee_hb_date, GETDATE()) AS AVGAge FROM [lab_db_var3].[dbo].[employee]
SELECT DATEDIFF(YEAR, (SELECT employee_date_hiring FROM [lab_db_var3].[dbo].[employee] WHERE employee_department_id = 4), GETDATE()) AS DF_DATE_HIRE
UPDATE [lab_db_var3].[dbo].[employee] SET employee_department_id = (SELECT department_id FROM [lab_db_var3].[dbo].[department] WHERE department_kind in ('OPS')) WHERE employee_department in ('OPS')
--UPDATE [lab_db_var3].[dbo].[employee] SET employee_department_id = (SELECT department_id )
