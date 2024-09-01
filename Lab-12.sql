---Lab-12---
--Syntax--

-------Apply Unique Key Constrain-----	
ALTER TABLE Table_Name 
ADD CONSTRAINT UniqueKeyName UNIQUE (Column_Name,Column_Name);
--------Example-------
ALTER TABLE Transaction_Master 
ADD CONSTRAINT tr_numb UNIQUE (Tr_Number, Tr_ID);

-------Apply Primary Key-----
Alter Table Table_Name
ADD CONSTRAINT PrimaryKeyName Primary Key (Column_Name);
----------Example----------
Alter Table Doctor_Detail
Add CONSTRAINT pk_d_id Primary Key (D_ID);

------Apply Foreign Key------
Alter Table Table_Name
Add constraint ForeignKeyName Foreign Key (Column_Name) 
References Table_Name(Column_Name);
----------Example---------------
Alter Table Room_Detail
Add constraint fk_H_R_ID Foreign Key (H_ID) 
References Hospital_Detail(H_ID);


--1)
ALTER TABLE Hospital_Detail 
ADD CONSTRAINT h_emailid UNIQUE (H_EmailID, H_ID);

ALTER TABLE Doctor_Detail 
ADD CONSTRAINT d_emailid UNIQUE (D_EMAILID, D_ID);

ALTER TABLE Transaction_Master 
ADD CONSTRAINT tr_numb UNIQUE (Tr_Number, Tr_ID);

--2)
--ALTER TABLE Hospital_Detail alter column H_ID int NOT NULL
Alter Table Hospital_Detail
Add  Primary Key (H_ID);

--ALTER TABLE Room_Detail alter column R_ID int NOT NULL
Alter Table Room_Detail
Add  Primary Key (R_ID);

--ALTER TABLE Doctor_Detail alter column D_ID int NOT NULL
Alter Table Doctor_Detail
Add  Primary Key (D_ID);

--ALTER TABLE Appointment_Detail alter column A_ID int NOT NULL
Alter Table Appointment_Detail
Add  Primary Key (A_ID);

--ALTER TABLE Patient_Detail alter column P_ID int NOT NULL
Alter Table Patient_Detail
Add  Primary Key (P_ID);

--ALTER TABLE Bill_Detail alter column B_ID int NOT NULL
Alter Table Bill_Detail
Add  Primary Key (B_ID);

--ALTER TABLE Transaction_Master alter column Tr_ID int NOT NULL
Alter Table Transaction_Master
Add  Primary Key (Tr_ID);


--3)
Alter Table Room_Detail
Add constraint fk_H_R_ID Foreign Key (H_ID) 
References Hospital_Detail(H_ID);

Alter Table Doctor_Detail
Add constraint fk_H_D_ID Foreign Key (H_ID) 
References Hospital_Detail(H_ID);

Alter Table Appointment_Detail
Add  Foreign Key (D_ID) References Doctor_Detail(D_ID);

Alter Table Appointment_Detail
Add  Foreign Key (H_ID) References Hospital_Detail(H_ID);

Alter Table Patient_Detail
Add  Foreign Key (A_ID) References Appointment_Detail(A_ID);

Alter Table Patient_Detail
Add  Foreign Key (R_ID) References Room_Detail(R_ID);

Alter Table Patient_Detail
Add  Foreign Key (D_ID) References Doctor_Detail(D_ID);

Alter Table Patient_Detail
Add  Foreign Key (H_ID) References Hospital_Detail(H_ID);

Alter Table Bill_Detail
Add  Foreign Key (P_ID) References Patient_Detail(P_ID);

Alter Table Bill_Detail
Add  Foreign Key (R_ID) References Room_Detail(R_ID);

Alter Table Bill_Detail
Add  Foreign Key (H_ID) References Hospital_Detail(H_ID);

Alter Table Transaction_Master
Add  Foreign Key (B_ID) References Bill_Detail(B_ID);

Alter Table Transaction_Master
Add  Foreign Key (P_ID) References Patient_Detail(P_ID);

Alter Table Transaction_Master
Add  Foreign Key (H_ID) References Hospital_Detail(H_ID);