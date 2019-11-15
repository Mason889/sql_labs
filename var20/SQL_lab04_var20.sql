use lab_db_var20
go

select EMPLOYEES.FullName, count(ID_ADVERTISEMENTS) as Number_of_shares from ADVERTISEMENTS 
inner join EMPLOYEES on ADVERTISEMENTS.ID_EMPLOYEES = EMPLOYEES.ID_EMPLOYEES 
group by EMPLOYEES.FullName

select * from ADCOMPONENTS 
Where ServiceType = 'TV';


SELECT ClientFullName, adc.ServicePrice
from ADVERTISEMENTS ads inner join ADCOMPONENTS adc on ads.ID_ActionCode = adc.ID_ActionCode
where adc.ServicePrice >= (select max(adc.ServicePrice) as tt
from ADCOMPONENTS adc)
