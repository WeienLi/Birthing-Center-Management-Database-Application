-- Include your drop table DDL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
CONNECT TO cs421;

-- Remember to put the drop table ddls for the tables with foreign key references
--    ONLY AFTER the parent tables has already been dropped (reverse of the creation order).

-- This is only an example of how you add drop table ddls to this file.
--   You may remove it.
DROP TABLE Father;
DROP TABLE Mother;
DROP TABLE Couples;
DROP TABLE Local_Facilities;
DROP TABLE Midwifes;
DROP TABLE Pregnancy;
DROP TABLE Community_Clinics;
DROP TABLE Birthing_Centers;
DROP TABLE Babies;
DROP TABLE Information_Session;
DROP TABLE Registration;
DROP TABLE Invitation;
DROP TABLE Attendance;
DROP TABLE Appointment;
DROP TABLE Notes;
DROP TABLE Midwifes_Predictions;
DROP TABLE Technicians;
DROP TABLE Tests;
DROP TABLE Ultrasound;
DROP TABLE Test_Predictions;
