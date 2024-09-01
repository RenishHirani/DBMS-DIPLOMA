--Syntax:-

-------Change Datatype-----------
Select CAST(Value AS data_type) As Alias;
Select CONVERT(data_type,Value) As Alias;

--------Display Current DateTime------
Select GETDATE() As ALias

-------Change Date/Time Format-------
Select FORMAT(Particular_Date,Formate) As Alias


Select FORMAT(Particular_Column_Name,Formate) as Alias
From Table_Name	

-------Display DateDiffrence ----
Select DATEDIFF(MONTH/DAY/YEAR,Particular_Date1,Particular_Date2) As Alias

Select DATEDIFF(MONTH/DAY/YEAR,Particular_Column_Name1,Particular_Column_Name2) As Alias
From Table_Name

-------Display Next Date After Month/Year/Day------
Select DATEADD(MONTH/DAY/YEAR,Value_Of_Int,Particular_Date) as Alias

--1)
Select CAST('1234.56' As Float) As Result;

--2)
Select CONVERT(INT,10.58) As Result;

--3)
Select GETDATE() As CurrentDate;

--4)
SELECT FORMAT(P_ADMITDATETIME,'MM-dd-yyyy') As Date_Time
From Bill_Detail

--5)
SELECT FORMAT(P_DISCHARGEDATETIME,'MM/dd/yyyy hh:mm:ss') As Date_Time
From Bill_Detail

--6)
SELECT B_ID,FORMAT(P_ADMITDATETIME,'dd MMM yyyy hh:mm:ss:tt') As Date_Time
From Bill_Detail

--7)
Select DATEDIFF(MONTH,'2023-08-20','2024-06-11') As Month_Count

--8)
Select DATEDIFF(DAY,'2023-05-22','2023-05-31') As Days_Count

--9)
Select DATEDIFF(DAY,P_ADMITDATETIME,P_DISCHARGEDATETIME) As Days_Count 
From Bill_Detail

--10)
Select DATEADD(month,10,GETDATE()) as Date_After_10_Months

--11)
Select DATEADD(day,5,GETDATE()) as Date_After_5_Days

--12)
Select DATEADD(year,3,GETDATE()) as Date_After_3_Year

--13)
Select DATEDIFF(year,'2004-08-12',GETDATE()) as Current_Age
 



