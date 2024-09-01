--Renish Hirani R.

create database Hospital_System_151

create table Hospital_Detail(
	H_ID iNT,
	H_NAME varchar(50),
	H_CONTACTNO bigint,
	H_ADDRESS varchar(100),
	H_CITY varchar(50),
	H_TYPE varchar(50),
	H_FIRE_SAFETY int,
	H_CANTEEN_FACILITY int
)
--EXEC SP_HELP Hospital_Detail

create table Room_Detail (
	R_ID int,
	R_NUMBER int,
	R_AVAILIBILTY varchar(50),
	R_TYPE varchar(50),
	R_CHARGE float
)
--EXEC SP_HELP Room_Detail

create table Doctor_Detail(
	D_ID int,
	D_NAME varchar(50),
	D_DISCRIPTION varchar(50),
	D_GENDER varchar(50),
	D_SALARY int,
	D_EMAILID varchar(50),
	D_CONTACTNO bigint,
	D_ADDRESS varchar(100),
	D_CITY varchar(50),
	H_ID int
)
--EXEC SP_HELP Doctor_Detail

create table Appointment_Detail(
	A_ID int,
	A_NUMBER int,
	A_DATE datetime,
	A_TIME time,
	D_ID int,
	H_ID int
)
EXEC SP_HELP Appointment_Detail

create table Patient_Detail(
	P_ID int,
	P_FIRSTNAME varchar(50),
	P_MIDDLENAME varchar(50),
	P_LASTNAME varchar(50),
	P_CONTACTNO bigint,
	P_AGE int,
	P_WEIGHT float,
	P_ADDRESS varchar(100),
	P_CITY varchar(50),
	P_GENDER varchar(50),
	P_DISEASE varchar(100),
	P_DISEASE_REMARKS varchar(100),
	P_GUARDIAN_CONTACTNO bigint,
	A_ID int,
	R_ID int,
	D_ID int,
	H_ID int
)
--EXEC SP_HELP Patient_Detail

create table Bill_Detail(
	B_ID int,
	P_ID int,
	R_ID int,
	H_ID int,
	P_ADMITDATETIME datetime,
	P_DISCHARGEDATETIME datetime,
	P_MEDICINE_CHARGE float,
	P_TOTALDAYS_CHARGE float,
	P_DOCTOR_CHARGE float,
	P_TOTAL_AMOUNT float,
	P_PENDING_AMOUNT float
)
--EXEC SP_HELP Bill_Detail

create table Transaction_Detail(
	TR_ID int,
	TR_NUMBER varchar(50),
	TR_B_AMOUNT float,
	TR_DATETIME datetime,
	TR_TYPE varchar(50),
	B_ID int,
	P_ID int,
	H_ID int,
)
--EXEC SP_HELP Transaction_Detail
