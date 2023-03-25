-- Include your create table DDL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
CONNECT TO cs421;

-- Remember to put the create table ddls for the tables with foreign key references
--    ONLY AFTER the parent tables has already been created.

-- This is only an example of how you add create table ddls to this file.
--   You may remove it.
CREATE TABLE Mother(
    Quebec_Health_Care_Card_Id VARCHAR(20) NOT NULL,
    Phone_Number VARCHAR(20) NOT NULL,
    Date_of_birth DATE NOT NULL,
    Address VARCHAR(100) NOT NULL,
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Profession VARCHAR(50) NOT NULL,
    Blood_Type CHAR(2) CHECK ( Blood_Type = 'A' or Blood_Type = 'B' or Blood_Type ='AB' or Blood_Type ='O'),
    PRIMARY KEY (Quebec_health_care_card_id)
);
Create Table Father(
    Father_id INT GENERATED BY DEFAULT AS IDENTITY,
    Quebec_Health_Care_Card_Id VARCHAR(20),
    Phone_Number VARCHAR(20) NOT NULL,
    Date_of_birth DATE NOT NULL,
    Address VARCHAR(100),
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50),
    Profession VARCHAR(50) NOT NULL,
    Blood_Type CHAR(2) CHECK ( Blood_Type = 'A' or Blood_Type = 'B' or Blood_Type ='AB' or Blood_Type ='O'),
    PRIMARY KEY (Father_id)
);
CREATE TABLE Couples(
    Couple_id INT GENERATED BY DEFAULT AS IDENTITY,
    Father_id INT,
    Mother_id VARCHAR(20) NOT NULL,
    Num_of_time_of_pregnancy INT NOT NULL CHECK ( Num_of_time_of_pregnancy > 0 ),
    PRIMARY KEY (Couple_id),
    FOREIGN KEY (Mother_id) REFERENCES Mother,
    FOREIGN KEY (Father_id) REFERENCES Father
);
CREATE TABLE Local_Facilities(
    Name VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Website VARCHAR(100) NOT NULL,
    Address VARCHAR(50) NOT NULL,
    Phone_Number VARCHAR(20) NOT NULL,
    PRIMARY KEY(Email)
);
CREATE TABLE Midwifes(
    Practitioner_id VARCHAR(20) NOT NULL,
    Email VARCHAR(50) NOT NULL,
    Phone_number VARCHAR(20) NOT NULL,
    Lemail VARCHAR(50) NOT NULL,
    Name VARCHAR(50) NOT NULL,
    PRIMARY KEY (Practitioner_id),
    FOREIGN KEY(Lemail) REFERENCES Local_Facilities
);
CREATE TABLE Pregnancy(
    Last_Menstrual_Period DATE NOT NULL,
    Number_of_babies INT CHECK ( Number_of_babies > 0 ),
    Expected_Time_Frame VARCHAR(20) NOT NULL, --use varchar to store year and months
    Couple_id INT NOT NULL,
    Location VARCHAR(50),
    mid VARCHAR(20),
    bmid VARCHAR(20),
    Final_agreed_date DATE,
    Nth_time_pregnant INT NOT NULL,
    PRIMARY KEY(Couple_id,Expected_Time_Frame),
    FOREIGN KEY(Couple_id) references Couples,
    FOREIGN KEY(mid) references Midwifes,
    FOREIGN KEY(bmid) references Midwifes
);
CREATE TABLE Birthing_Centers(
    email VARCHAR(50) NOT NULL,
    PRIMARY KEY(email),
    FOREIGN KEY (email) REFERENCES Local_Facilities
);
CREATE TABLE Community_Clinics(
    email VARCHAR(50) NOT NULL,
    PRIMARY KEY(email),
    FOREIGN KEY (email) REFERENCES Local_Facilities
);
CREATE TABLE Babies(
    Nth_baby_for_this_pregnancy INT NOT NULL CHECK ( Nth_baby_for_this_pregnancy > 0 ),
    Gender CHAR NOT NULL CHECK ( Gender = 'M' or Gender = 'F'),
    Expected_Time_Frame VARCHAR(20) NOT NULL,
    Couple_id INT NOT NULL,
    Bloodtype CHAR(2) CHECK ( Bloodtype = 'A' or Bloodtype = 'B' or Bloodtype ='AB' or Bloodtype ='O'),
    Name VARCHAR(50),
    Time TIME,
    Birthdate date,
    PRIMARY KEY(Nth_baby_for_this_pregnancy,Couple_id,Expected_Time_Frame),
    FOREIGN KEY (Couple_id,Expected_Time_Frame) references Pregnancy
);
CREATE TABLE Information_Session(
    Time TIME NOT NULL,
    Date DATE NOT NULL,
    Language VARCHAR(20) NOT NULL,
    Mid VARCHAR(20) NOT NULL,
    PRIMARY KEY(Time,Date,Mid),
    FOREIGN KEY (Mid) references Midwifes
);
CREATE TABLE Registration(
    Couple_id int NOT NULL,
    Expected_Time_Frame VARCHAR(20) NOT NULL,
    Mid VARCHAR(20) NOT NULL,
    Time TIME NOT NULL,
    Date DATE NOT NULL,
    PRIMARY KEY(Couple_id,Expected_Time_Frame,Time,Date,Mid),
    FOREIGN KEY (Couple_id,Expected_Time_Frame) references Pregnancy,
    FOREIGN KEY (Time,Date,Mid) references Information_Session
);
CREATE TABLE Attendance(
    Couple_id int NOT NULL,
    Expected_Time_Frame VARCHAR(20) NOT NULL,
    Mid VARCHAR(20) NOT NULL,
    Time TIME NOT NULL,
    Date DATE NOT NULL,
    PRIMARY KEY(Couple_id,Expected_Time_Frame,Time,Date,Mid),
    FOREIGN KEY (Couple_id,Expected_Time_Frame) references Pregnancy,
    FOREIGN KEY (Time,Date,Mid) references Information_Session
);
CREATE TABLE Invitation(
    Couple_id int NOT NULL,
    Expected_Time_Frame VARCHAR(20) NOT NULL,
    Mid VARCHAR(20) NOT NULL,
    Time TIME NOT NULL,
    Date DATE NOT NULL,
    PRIMARY KEY(Couple_id,Expected_Time_Frame,Time,Date,Mid),
    FOREIGN KEY (Couple_id,Expected_Time_Frame) references Pregnancy,
    FOREIGN KEY (Time,Date,Mid) references Information_Session
);
CREATE TABLE Appointment(
    Couple_id INT NOT NULL,
    Expected_Time_Frame VARCHAR(20) NOT NULL,
    Mid VARCHAR(20) NOT NULL,
    Time TIME NOT NULL,
    Date DATE NOT NULL,
    PRIMARY KEY(Time,Date,Mid),
    FOREIGN KEY (Couple_id,Expected_Time_Frame) references Pregnancy,
    FOREIGN KEY (Mid) references Midwifes
);
CREATE TABLE Notes(
    Date DATE not null,
    Time TIME not null,
    aDate DATE not null,
    aTime TIME not null,
    Mid VARCHAR(20) NOT NULL,
    Content VARCHAR(2000) NOT NULL,
    PRIMARY KEY(Time,aDate,aTime,Mid),
    FOREIGN KEY(aTime,aDate,Mid) references Appointment
);
CREATE TABLE Midwifes_Predictions(
    Mid VARCHAR(20) NOT NULL,
    Expected_Time_Frame VARCHAR(20) NOT NULL,
    Couple_id Int NOT NULL,
    Estimate_Date DATE NOT NULL,
    PRIMARY KEY (Mid,Expected_Time_Frame,Couple_id),
    FOREIGN KEY (Mid) references Midwifes,
    FOREIGN KEY (Couple_id,Expected_Time_Frame) references Pregnancy
);
CREATE TABLE Technicians(
    Name VARCHAR(50) NOT NULL,
    ID VARCHAR(20) NOT NULL,
    Phone_Number VARCHAR(20) NOT NULL,
    PRIMARY KEY (ID)
);
CREATE TABLE Tests(
    Tid int GENERATED BY DEFAULT AS IDENTITY,
    Data_taken DATE,
    Date_done DATE NOT NULL,
    Date_prescribed DATE NOT NULL,
    Type VARCHAR(50) NOT NULL,
    Result VARCHAR(200),
    Techid VARCHAR(20),
    Mid VARCHAR(20) NOT NULL,
    Expected_Time_Frame VARCHAR(20) NOT NULL,
    Couple_id INT NOT NULL,
    PRIMARY KEY (Tid),
    FOREIGN KEY (Techid) references Technicians,
    FOREIGN KEY (Mid) references Midwifes,
    FOREIGN KEY (Couple_id,Expected_Time_Frame) references Pregnancy,
    CHECK ( Date_prescribed <= Data_taken and Data_taken <= Date_done and Date_prescribed <= Date_done)
);
CREATE TABLE Ultrasound(
    Tid int NOT NULL,
    PRIMARY KEY (Tid),
    FOREIGN KEY(Tid) references Tests
);
CREATE TABLE Test_Predictions(
    Tid int NOT NULL,
    Expected_Time_Frame VARCHAR(20) NOT NULL,
    Couple_id INT NOT NULL,
    Test_Predictions DATE NOT NULL,
    PRIMARY KEY (Tid,Expected_Time_Frame,Couple_id),
    FOREIGN KEY (Tid) REFERENCES Ultrasound,
    FOREIGN KEY (Couple_id,Expected_Time_Frame) references Pregnancy
);