--Lab -6
--Syntax:-
SELECT Column_Name
FROM Table_Name
WHERE Condition
GROUP BY Column_Name
HAVING condition
ORDER BY Column_Name DESC;

--only group by
SELECT Column_Name
FROM Table_Name
WHERE Condition
GROUP BY Column_Name

--group by with having
SELECT Column_Name
FROM Table_Name
WHERE Condition
GROUP BY Column_Name
HAVING condition

--only  order by
SELECT Column_Name
FROM Table_Name
WHERE Condition
ORDER BY Column_Name DESC/asc;


--1
SELECT R_Type, COUNT(R_TYPE) AS Room_Count
FROM Room_Detail
GROUP BY R_Type;

--2
SELECT P_City, COUNT(P_City) AS Patient_Count
FROM Patient_Detail
GROUP BY P_City;

--3
SELECT COUNT(H_ID),H_CANTEEN_FACILITY AS Hospital_Count
FROM Hospital_Detail
Group By H_CANTEEN_FACILITY
Having H_Canteen_Facility = 1;

--4
SELECT P_Disease, COUNT(P_ID) AS Patient_Count
FROM Patient_Detail
GROUP BY P_Disease;

--5
SELECT D_Designation,COUNT(*) AS Dentist_Count
FROM Doctor_Detail
Group By D_Designation
Having D_Designation = 'Dentist';

--6
SELECT Tr_Type, COUNT(Tr_ID) AS Transaction_Count
FROM Transaction_Master
GROUP BY Tr_Type;

--7
SELECT H_Name
FROM Hospital_Detail
ORDER BY H_Name DESC;

--8
SELECT D_Name
FROM Doctor_Detail
ORDER BY D_Name Asc;

--9
SELECT D_Name,D_EmailID, H_ID, D_Salary
FROM Doctor_Detail
ORDER BY D_Salary DESC;

--10
SELECT R_Type, R_Charge
FROM Room_Detail
ORDER BY R_Charge;

--11
SELECT P_FirstName, P_Age
FROM Patient_Detail
ORDER BY P_Age DESC;










