--Lab-8
--Using Between Keyword--
Select Column_Name From Table_Name
Where Column_Name Between Value1 And Value2;

--Using In Keyword--
Select Column_Name From Table_Name
Where Column_Name In (Value1, Value2);

--Using Not In Keyword--
Select Column_Name From Table_Name
Where Column_Name Not In (Value1, Value2);

--Start With Particular Character/Word--
Select Column_Name From Table_Name
Where Column_Name Like 'Particular_Character/Word%';

--End With Particular Character/Word--
Select Column_Name From Table_Name
Where Column_Name Like '%Particular_Character/Word';

--Consists Particular Character/Word--
Select Column_Name From Table_Name
Where Column_Name Like '%Particular_Character/Word%';

--Particular Word On Particular Character/Space--
--Example--
--Display Disease whose P_Disease second Character is ‘r’--
select P_DISEASE From Patient_Detail
Where P_Disease like '_r%'

--1
select R_ID,R_AVAILIBILTY,R_Charge 
from Room_Detail
where R_Charge between 2000 and 5000

--2
select D_ID,D_Name,D_Designation 
from Doctor_Detail
where D_Salary between 40000 and 80000

--3
select P_ID,P_FirstName,P_ContactNo,P_Disease,P_CITY 
from Patient_Detail
where P_City In ('Rajkot','Morbi','Bhavnagar')

--4
select A_ID,A_Number,H_ID 
from Appointment_Detail
where A_Date between '2023-05-01' and '2023-12-31'

--5
select H_Name 
from Hospital_Detail
where H_Name like 'R%'

--6
select D_Name,D_City,D_Designation 
from Doctor_Detail
where D_Name like '%a'

--7
select P_FirstName,P_Age,P_Disease
from Patient_Detail
where P_Disease_Remarks like '%r_'

--8
select D_Name 
from Doctor_Detail
where D_Name like '%i%'

--9
select P_FirstName,P_Address,P_ContactNo
from Patient_Detail
where P_City not in ('Rajkot','Morbi')

--10
select * From Bill_Detail
where P_AdmitDateTime between '2023-01-10 00:00:00:000' and '2024-01-31 00:00:00:000'



