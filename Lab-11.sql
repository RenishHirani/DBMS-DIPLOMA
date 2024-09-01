--Lab11--

---JOINS---
INNER JOIN
LEFT OUTER JOIN
RIGHT OUTER JOIN
FULL OUTER JOIN

---Syntax---
---Between Two Table---
SELECT Column_Name
FROM Table1
JOINNAME Table2
ON Table1.Column_Name = Table2.Column_Name
Where Condition;

---Between Three Table---
SELECT Column_Name
FROM Table1
JOINNAME Table2
ON Table1.Column_Name = Table2.Column_Name
JOINNAME Table3
ON Table2.Column_Name = Table3.Column_Name
Where Condition;
--1
select Hospital_Detail.H_Name,Room_Detail.R_Type 
from Hospital_Detail inner join Room_Detail
on Hospital_Detail.H_ID = Room_Detail.H_ID

--2
select Hospital_Detail.H_Name,Doctor_Detail.D_Name
from Hospital_Detail inner join Doctor_Detail
on Hospital_Detail.H_ID = Doctor_Detail.H_ID

--3
select Patient_Detail.P_FirstName,Room_Detail.R_Number
from Patient_Detail inner join Room_Detail
on Patient_Detail.R_ID=Room_Detail.R_ID

--4
select Hospital_Detail.H_Name, Patient_Detail.P_FirstName, Doctor_Detail.D_Name
from Hospital_Detail 
inner join Patient_Detail
on Hospital_Detail.H_ID=Patient_Detail.H_ID
inner join Doctor_Detail
on Patient_Detail.D_ID=Doctor_Detail.D_ID

--5
select Patient_Detail.P_FirstName,Appointment_Detail.A_Number,Hospital_Detail.H_Name
from Patient_Detail inner join Appointment_Detail
on Patient_Detail.A_ID=Appointment_Detail.A_ID
inner join Hospital_Detail
on Patient_Detail.H_ID=Hospital_Detail.H_ID

--6

select Patient_Detail.P_FirstName,Bill_Detail.P_Total_Amount,Hospital_Detail.H_Name
from Patient_Detail inner join Bill_Detail
on Patient_Detail.P_ID=Bill_Detail.P_ID
inner join Hospital_Detail
on Patient_Detail.H_ID=Hospital_Detail.H_ID

--7
select Patient_Detail.P_FirstName,Patient_Detail.P_Disease,Bill_Detail.P_Pending_Amount,
Bill_Detail.B_ID
from Patient_Detail inner join Bill_Detail
on Patient_Detail.P_ID=Bill_Detail.P_ID
where Bill_Detail.P_Pending_Amount>3000

--8
select Doctor_Detail.D_ID,Doctor_Detail.D_Name,Patient_Detail.P_ID
from Doctor_Detail left outer join Patient_Detail
on Doctor_Detail.D_ID=Patient_Detail.D_ID

--9
select A.A_Number,P.P_ID,P.P_FirstName
from Appointment_Detail as A right outer join Patient_Detail as P
on A.A_ID=P.A_ID

--10
select Room_Detail.R_Number,Patient_Detail.P_FirstName
from Room_Detail full outer join Patient_Detail
on Room_Detail.R_ID=Patient_Detail.R_ID
