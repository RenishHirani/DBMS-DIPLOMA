--Syntax:-

----Display Length----
Select LEN(Column_Name) As Alias
From Table_Name

----Display Upper Case----
Select UPPER(Column_Name) as Alias
From Table_Name

----Display Lower Case----
Select LOWER(Column_Name) as Alias
From Table_Name

----Display First No. Of Characters====
Select LEFT(Column_Name,ValueOfInt)  As Alias
From Table_Name

----Display Last No. Of Characters====
Select RIGHT(Column_Name,ValueOfInt)  As Alias
From Table_Name

----Reverce Column_Record----
Select REVERSE(Column_Name) As Alias 
from Table_Name

----Use Of Substring----
Select SUBSTRING('String',Index_Of_Particular_Word,Length_Of_Particular_Word)
As Alias

Select SUBSTRING('Diploma Computer Eng.',9,8) As  Result

----Replace Particular String----
Select REPLACE('String','Old_Word','New_Word') As Alias

Select REPLACE('Diploma Civil Eng.','Civil','Computer') As Result

----Replace Particular Column----
Select REPLACE(Column_Name,'Old_Word','New_Word') As Alias
From Table_Name

--1
select D_ID,len(D_ID) as length_DID,
		D_Name,len(D_Name) as length_DName,
		D_Address,len(D_Address) as length_DAdress
from Doctor_Detail

--2
select H_Name , len(H_Name) as length_HName,
	H_Type,len(H_Type) as length_HType,
	H_City , len(H_City) as length_HCity
from Hospital_Detail

--3
select upper(D_Name) as Upper_DName,
	lower(D_Designation) as Lower_DDesignation
from Doctor_Detail

--4
select P_ContactNo,
LEFT(P_ContactNo,5)  As Substring_Of_ContactNo
from Patient_Detail

--5
select H_City,RIGHT(H_City , 3) As Result
from Hospital_Detail

--6
select substring('Diploma Computer, DIETDS',9,8) As  Exe

--7
select SUBSTRING('Darshan University, Rajkot',21,6) As Exe

--8
select REPLACE('Darshan College','College','University') As Exe

--9
select H_Name,H_Type,
REPLACE(H_Type,'Govt.','Government') as Replaced_H_Type
from Hospital_Detail

--10
select H_Name,H_Address,
LEFT(H_Address,CHARINDEX(',',H_Address)-1) As result
from Hospital_Detail

--11
select P_Address,REVERSE(P_Address) from Patient_Detail

--12
select D_Name,D_Address,
RIGHT(D_Address,CHARINDEX(',',REVERSE(D_Address))-2) As Result
from Doctor_Detail