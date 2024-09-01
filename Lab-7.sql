--Lab -7

--Syntax--
Select Column_Name From Table_Name
Where Column_Name = Value1

--Using And Keyword--

Select Column_Name From Table_Name
Where Column_Name = Value1 And Column_Name = Value2;

--Using Or Keyword--
Select Column_Name From Table_Name
Where Column_Name = Value1 Or Column_Name = Value2;






--1
SELECT D_ID, D_Name, D_Salary, D_Salary-(D_Salary * (0.10)) AS New_Salary
FROM Doctor_Detail
WHERE D_Designation = 'MD';










--2
SELECT R_Number, R_Type, R_Charge, R_Charge+(R_Charge * 0.07) AS New_Room_Charge
FROM Room_Detail;



--3
SELECT P_FirstName,P_LastName
FROM Patient_Detail
WHERE P_Age < 40;






--4
SELECT R_Type, R_Charge
FROM Room_Detail
WHERE R_Charge > 2000;

--5
SELECT D_ID, D_Name, D_EmailID
FROM Doctor_Detail
WHERE D_Designation <> 'Ortho';

--6
SELECT P_ID, P_FirstName, P_CONTACTNO, P_City
FROM Patient_Detail
--WHERE P_Disease IN ('Brain Tumor', 'Tooth Break');
WHERE P_Disease = 'Brain Tumor' OR P_Disease  ='Tooth Break'

--7
SELECT * FROM Hospital_Detail
WHERE H_Type = 'Private' AND H_Canteen_Facility = 1;

--8
SELECT D_Name, D_City, D_Designation
FROM Doctor_Detail
WHERE D_City <> 'Rajkot' AND D_CITY <> 'Jamnagar';

--9
SELECT B_ID, P_ID
FROM Bill_Detail
WHERE P_Pending_Amount >= 3000;

--10
SELECT D_ID, D_Name, D_City, D_Salary
FROM Doctor_Detail
WHERE D_Salary <= 50000 AND D_City = 'Rajkot';
