use lab_db_var20
go
------
ALTER TABLE ADVERTISEMENTS	
	ADD CONSTRAINT datecheck
	CHECK(ContractDate < EndDateContract)
ALTER TABLE ADCOMPONENTS	
	ADD CONSTRAINT pricecheck
	CHECK(ServicePrice > 0)
ALTER TABLE ADCOMPONENTS	
	ADD CONSTRAINT ServiceTypeCheck
	CHECK(ServiceType in ('RADIO', 'INTERNET','TV','POSTERS','NEWSPAPER'));

--------


ALTER TABLE EMPLOYEES
	ADD CONSTRAINT emppos
	FOREIGN KEY(ID_Position) REFERENCES POSITION(ID_Position)
	ON DELETE CASCADE;

ALTER TABLE EMPLOYEES
	ADD CONSTRAINT empdep
	FOREIGN KEY(ID_Department) REFERENCES DEPARTMENT(ID_Department)
	ON DELETE CASCADE;

ALTER TABLE ADVERTISEMENTS
	ADD CONSTRAINT emp_ad
	FOREIGN KEY(ID_EMPLOYEES) REFERENCES EMPLOYEES(ID_EMPLOYEES)
	ON DELETE CASCADE;

ALTER TABLE ADVERTISEMENTS
	ADD CONSTRAINT action_ad
	FOREIGN KEY(ID_ActionCode) REFERENCES ADCOMPONENTS(ID_ActionCode)
	ON DELETE CASCADE;

-------------
