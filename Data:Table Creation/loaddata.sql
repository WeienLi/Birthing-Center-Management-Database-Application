-- Include your INSERT SQL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
CONNECT TO cs421;

-- Remember to put the INSERT statements for the tables with foreign key references
--    ONLY AFTER the parent tables!

-- This is only an example of how you add INSERT statements to this file.
--   You may remove it.
--Mother
INSERT INTO Mother(Quebec_Health_Care_Card_Id, Phone_Number, Date_of_birth, Address, Name, Email, Profession, Blood_Type)
VALUES ('89-724-4584','616-411-4219','1979-09-11','58295 Arizona Point','Kendra Keigher',
                           'kkeigher0@ifeng.com','Staff Accountant II','A');
INSERT INTO Mother(Quebec_Health_Care_Card_Id, Phone_Number, Date_of_birth, Address, Name, Email, Profession, Blood_Type)
VALUES ('07-663-2830', '969-173-8209','1994-09-19','2103 Superior Alley','Douglass Thody',
        'dthody1@deviantart.com','Associate Professor','AB');
INSERT INTO Mother(Quebec_Health_Care_Card_Id, Phone_Number, Date_of_birth, Address, Name, Email, Profession, Blood_Type)
VALUES ('16-179-2982','230-725-8466','1982-04-04','3516 Almo Place',
        'Joyann Toupe','jtoupe2@intel.com','Technical Writer','O');
INSERT INTO Mother(Quebec_Health_Care_Card_Id, Phone_Number, Date_of_birth, Address, Name, Email, Profession, Blood_Type)
VALUES ('10-442-6529','740-758-6647','1971-08-30','5640 Hoepker Alley','Delano Russan','drussan3@ustream.tv',
        'Quality Engineer','B');
INSERT INTO Mother(Quebec_Health_Care_Card_Id, Phone_Number, Date_of_birth, Address, Name, Email, Profession, Blood_Type)
VALUES ('84-492-9029','244-386-4786','1980-01-07','8 Forest Dale Center','Lara Boynton','lboyntone@fc2.com'
,'Environmental Specialist','O');
INSERT INTO Mother(Quebec_Health_Care_Card_Id, Phone_Number, Date_of_birth, Address, Name, Email, Profession, Blood_Type)
VALUES ('86-357-7122','340-512-7946','1966-09-14','33620 Anthes Terrace','Lemmie O Brian',
        'lobriand@t.co','Environmental Tech','AB');
INSERT INTO Mother(Quebec_Health_Care_Card_Id, Phone_Number, Date_of_birth, Address, Name, Email, Profession, Blood_Type)
VALUES ('88-177-8179','648-240-1597','1967-10-08','07 Coleman Park','Victoria Gutierrez','dstefic@sogou.com',
        'VP Product Management','O');
--Father
INSERT INTO Father(Quebec_Health_Care_Card_Id, Phone_Number, Date_of_birth, Address, Name, Email, Profession, Blood_Type)
VALUES ('73-744-8187','981-794-2309','1964-08-05','940 Carpenter Hill','Janith Wenden',
        'jwenden0@timesonline.co.uk','Sales Representative','A');
INSERT INTO Father(Quebec_Health_Care_Card_Id, Phone_Number, Date_of_birth, Address, Name, Email, Profession, Blood_Type)
VALUES ('06-933-7708','487-279-4538','1972-04-26','86233 Londonderry Road','Cymbre Ganter',
        'cganter1@blogger.com','Nurse','O');
INSERT INTO Father(Quebec_Health_Care_Card_Id, Phone_Number, Date_of_birth, Address, Name, Email, Profession, Blood_Type)
VALUES ('36-680-4052','264-458-9880','1971-08-03','4 Stoughton Lane','Husein Dionsetti',
        'hdionsetti2@joomla.org','Systems Administrator III','AB');
INSERT INTO Father(Quebec_Health_Care_Card_Id, Phone_Number, Date_of_birth, Address, Name, Email, Profession, Blood_Type)
VALUES ('39-405-3323','363-338-4166','1981-11-04','309 Graceland Parkway','Ashia Le Brom',
        'ale3@unc.edu','Cost Accountant','A');
INSERT INTO Father(Quebec_Health_Care_Card_Id, Phone_Number, Date_of_birth, Address, Name, Email, Profession, Blood_Type)
VALUES ('62-656-7472','440-207-0440','1978-08-15','29871 Spohn Plaza',
        'Marian Acton','macton4@howstuffworks.com','Senior Cost Accountant','B');
INSERT INTO Father(Quebec_Health_Care_Card_Id, Phone_Number, Date_of_birth, Address, Name, Email, Profession, Blood_Type)
VALUES ('75-917-9399','148-418-1066','1986-09-05','3 Pond Junction',
        'Adria Fiennes','afiennes5@shop-pro.jp','Senior Cost Accountant','AB');
--Couples
INSERT INTO Couples(Father_id, Mother_id, Num_of_time_of_pregnancy)
VALUES (1,'07-663-2830',2) ;
INSERT INTO Couples(Father_id, Mother_id, Num_of_time_of_pregnancy)
VALUES (2,'89-724-4584',3) ;
INSERT INTO Couples(Father_id, Mother_id, Num_of_time_of_pregnancy)
VALUES (3,'84-492-9029',4) ;
INSERT INTO Couples(Father_id, Mother_id, Num_of_time_of_pregnancy)
VALUES (4,'88-177-8179',2) ;
INSERT INTO Couples(Father_id, Mother_id, Num_of_time_of_pregnancy)
VALUES (5,'86-357-7122',7) ;
INSERT INTO Couples(Father_id, Mother_id, Num_of_time_of_pregnancy)
VALUES (6,'16-179-2982',1) ;
INSERT INTO Couples(Father_id, Mother_id, Num_of_time_of_pregnancy)
VALUES (NULL,'10-442-6529',10) ;
--Local_Facilities
INSERT INTO Local_Facilities(Name, Email, Website, Address, Phone_Number)
VALUES ('Emard and Sons','swillingham0@instagram.com','https://www.EmardandSons.com/',
        '51 Golden Leaf Alley','781-635-7940');
INSERT INTO Local_Facilities(Name, Email, Website, Address, Phone_Number)
VALUES ('Graham-Kilback','araubenheimers1@wunderground.com','https://www.Graham-Kilback.com/',
        '8627 Dovetail Street','767-473-4739');
INSERT INTO Local_Facilities(Name, Email, Website, Address, Phone_Number)
VALUES ('Miller-Murphy','khowford2@bloomberg.com','https://www.Miller-Murphy.net/',
        '9 Fallview Center','553-343-2569');
INSERT INTO Local_Facilities(Name, Email, Website, Address, Phone_Number)
VALUES ('Connelly and Sons','kbinham3@ycombinator.com','https://www.ConnellyandSons.ca/',
        '3 Tennessee Way','349-773-5596');
INSERT INTO Local_Facilities(Name, Email, Website, Address, Phone_Number)
VALUES ('Ward-Legros','sbrumby5@lycos.com','https://www.Ward-Legros.html/',
        '2199 Dorton Trail','637-604-7514');
INSERT INTO Local_Facilities(Name, Email, Website, Address, Phone_Number)
VALUES ('Hilpert and Wunsch','lcattersonc@digg.com','https://www.HilpertandWunsch.inc/',
        '49570 Waywood Parkway','663-712-4055');
INSERT INTO Local_Facilities(Name, Email, Website, Address, Phone_Number)
VALUES ('Wyman Group','jgalfour7@sakura.ne.jp','https://www.Wyman_Group.ca/',
        '22 Warbler Plaza','293-452-2896');
INSERT INTO Local_Facilities(Name, Email, Website, Address, Phone_Number)
VALUES ('Lowe and Sons','shearnden9@mashable.com','https://www.LoweandSons.net/',
        '9 Springview Hill','979-195-6049');
INSERT INTO Local_Facilities(Name, Email, Website, Address, Phone_Number)
VALUES ('Miller Inc','nrannigana@china.com.cn','https://www.Miller.cn/',
        '621 Towne Court','289-686-4789');
INSERT INTO Local_Facilities(Name, Email, Website, Address, Phone_Number)
VALUES ('Lac-Saint-Louis','afendb@wikia.com','https://www.Konopelski.net/',
        '49570 Waywood Parkway','663-712-4055');
--Midwifes
INSERT INTO Midwifes(Practitioner_id, Email, Phone_number, Lemail,Name)
VALUES('55-098-1352','alippiatt0@meetup.com','781-706-9864','swillingham0@instagram.com','Devy Stefi');
INSERT INTO Midwifes(Practitioner_id, Email, Phone_number, Lemail,Name)
VALUES('00-918-4814','cboij1@aboutads.info','363-659-4012','araubenheimers1@wunderground.com','Lillis Morffew');
INSERT INTO Midwifes(Practitioner_id, Email, Phone_number, Lemail,Name)
VALUES('48-240-3675','bsoot2@cloudflare.com','440-789-6091','khowford2@bloomberg.com','Xymenes Gaenor');
INSERT INTO Midwifes(Practitioner_id, Email, Phone_number, Lemail,Name)
VALUES('89-946-1060','korbon4@bravesites.com','738-571-3833','afendb@wikia.com','Sharona Streader');
INSERT INTO Midwifes(Practitioner_id, Email, Phone_number, Lemail,Name)
VALUES('49-186-2024','dandreas5@fema.gov','890-243-9982','nrannigana@china.com.cn','Nathanael Rebanks');
INSERT INTO Midwifes(Practitioner_id, Email, Phone_number, Lemail,Name)
VALUES('91-172-4543','wskullet6@a8.net','565-322-4888','shearnden9@mashable.com','Marion Girard');
--Pregnancy
INSERT INTO Pregnancy(Last_Menstrual_Period, Number_of_babies, Expected_Time_Frame,
                      Couple_id, Location, mid, bmid, Final_agreed_date,Nth_time_pregnant)
VALUES('2022-01-07','1','2022-07','6','3516 Almo Place','55-098-1352','00-918-4814','2022-07-06',1);
INSERT INTO Pregnancy(Last_Menstrual_Period, Number_of_babies, Expected_Time_Frame,
                      Couple_id, Location, mid, bmid, Final_agreed_date,Nth_time_pregnant)
VALUES('2021-12-17',NULL,'2022-06','1','2103 Superior Alley','48-240-3675','55-098-1352','2022-07-29',2);
INSERT INTO Pregnancy(Last_Menstrual_Period, Number_of_babies, Expected_Time_Frame,
                      Couple_id, Location, mid, bmid, Final_agreed_date,Nth_time_pregnant)
VALUES('2020-12-17','1','2022-07','2','58295 Arizona Point','89-946-1060','55-098-1352',NULL,3);
INSERT INTO Pregnancy(Last_Menstrual_Period, Number_of_babies, Expected_Time_Frame,
                      Couple_id, Location, mid, bmid, Final_agreed_date,Nth_time_pregnant)
VALUES('2021-01-17',NULL,'2022-07','3','8 Forest Dale Center','49-186-2024','55-098-1352',NULL,1);
INSERT INTO Pregnancy(Last_Menstrual_Period, Number_of_babies, Expected_Time_Frame,
                      Couple_id, Location, mid, bmid, Final_agreed_date,Nth_time_pregnant)
VALUES('2021-02-17','3','2022-07','4','07 Coleman Park','91-172-4543','89-946-1060','2022-07-31',2);
INSERT INTO Pregnancy(Last_Menstrual_Period, Number_of_babies, Expected_Time_Frame,
                      Couple_id, Location, mid, bmid, Final_agreed_date,Nth_time_pregnant)
VALUES('2021-04-17','2','2022-07','5','33620 Anthes Terrace','00-918-4814','91-172-4543','2022-07-08',1);
--Birthing Centers
INSERT INTO Birthing_Centers VALUES ('swillingham0@instagram.com');
INSERT INTO Birthing_Centers VALUES ('araubenheimers1@wunderground.com');
INSERT INTO Birthing_Centers VALUES ('khowford2@bloomberg.com');
INSERT INTO Birthing_Centers VALUES ('kbinham3@ycombinator.com');
INSERT INTO Birthing_Centers VALUES ('sbrumby5@lycos.com');
--Community_Clinics
INSERT INTO Community_Clinics VALUES ('lcattersonc@digg.com');
INSERT INTO Community_Clinics VALUES ('jgalfour7@sakura.ne.jp');
INSERT INTO Community_Clinics VALUES ('shearnden9@mashable.com');
INSERT INTO Community_Clinics VALUES ('nrannigana@china.com.cn');
INSERT INTO Community_Clinics VALUES ('afendb@wikia.com');
--babies
INSERT INTO Babies (Nth_baby_for_this_pregnancy, Gender, Expected_Time_Frame, Couple_id, Bloodtype,
                    Name, Time, Birthdate) VALUES ('1','M','2022-06','1','A','Osborn',NULL,NULL);
INSERT INTO Babies (Nth_baby_for_this_pregnancy, Gender, Expected_Time_Frame, Couple_id, Bloodtype,
                    Name, Time, Birthdate) VALUES ('1','F','2022-07','2','AB','Rebecca',NULL,NULL);
INSERT INTO Babies (Nth_baby_for_this_pregnancy, Gender, Expected_Time_Frame, Couple_id, Bloodtype,
                    Name, Time, Birthdate) VALUES ('2','M','2022-07','3','O','Jim',NULL,NULL);
INSERT INTO Babies (Nth_baby_for_this_pregnancy, Gender, Expected_Time_Frame, Couple_id, Bloodtype,
                    Name, Time, Birthdate) VALUES ('3','F','2022-07','4','B','Brianna',NULL,NULL);
INSERT INTO Babies (Nth_baby_for_this_pregnancy, Gender, Expected_Time_Frame, Couple_id, Bloodtype,
                    Name, Time, Birthdate) VALUES ('2','M','2022-07','5','AB','Jamie',NULL,NULL);
INSERT INTO Babies (Nth_baby_for_this_pregnancy, Gender, Expected_Time_Frame, Couple_id, Bloodtype,
                    Name, Time, Birthdate) VALUES ('1','F','2022-07','6','A','Krystal',NULL,NULL);
--Information_Session
Insert Into Information_Session (Time, Date, Language, Mid)
VALUES('15:00:00','2021-12-09','English','49-186-2024');
Insert Into Information_Session (Time, Date, Language, Mid)
VALUES('12:00:00','2022-03-22','French','91-172-4543');
Insert Into Information_Session (Time, Date, Language, Mid)
VALUES('11:00:00','2022-03-24','Dutch','91-172-4543');
Insert Into Information_Session (Time, Date, Language, Mid)
VALUES('10:00:00','2021-03-25','English','91-172-4543');
Insert Into Information_Session (Time, Date, Language, Mid)
VALUES('09:30:00','2021-12-20','French','00-918-4814');
Insert Into Information_Session (Time, Date, Language, Mid)
VALUES('08:45:00','2022-01-15','Dutch','89-946-1060');
Insert Into Information_Session (Time, Date, Language, Mid)
VALUES('16:00:00','2022-03-10','English','48-240-3675');
--Registration
INSERT INTO Registration(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('1','2022-06','49-186-2024','15:00:00','2021-12-09');
INSERT INTO Registration(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('2','2022-07','91-172-4543','12:00:00','2022-03-22');
INSERT INTO Registration(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('3','2022-07','91-172-4543','11:00:00','2022-03-24');
INSERT INTO Registration(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('4','2022-07','91-172-4543','10:00:00','2021-03-25');
INSERT INTO Registration(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('5','2022-07','00-918-4814','09:30:00','2021-12-20');
INSERT INTO Registration(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('6','2022-07','89-946-1060','08:45:00','2022-01-15');
INSERT INTO Registration(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('1','2022-06','48-240-3675','16:00:00','2022-03-10');
--Attendance
INSERT INTO Attendance(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('1','2022-06','49-186-2024','15:00:00','2021-12-09');
INSERT INTO Attendance(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('2','2022-07','91-172-4543','12:00:00','2022-03-22');
INSERT INTO Attendance(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('3','2022-07','91-172-4543','11:00:00','2022-03-24');
INSERT INTO Attendance(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('4','2022-07','91-172-4543','10:00:00','2021-03-25');
INSERT INTO Attendance(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('5','2022-07','00-918-4814','09:30:00','2021-12-20');
INSERT INTO Attendance(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('6','2022-07','89-946-1060','08:45:00','2022-01-15');
INSERT INTO Attendance(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('1','2022-06','48-240-3675','16:00:00','2022-03-10');
--Invitation
INSERT INTO Invitation(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('1','2022-06','49-186-2024','15:00:00','2021-12-09');
INSERT INTO Invitation(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('2','2022-07','91-172-4543','12:00:00','2022-03-22');
INSERT INTO Invitation(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('3','2022-07','91-172-4543','11:00:00','2022-03-24');
INSERT INTO Invitation(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('4','2022-07','91-172-4543','10:00:00','2021-03-25');
INSERT INTO Invitation(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('5','2022-07','00-918-4814','09:30:00','2021-12-20');
INSERT INTO Invitation(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('6','2022-07','89-946-1060','08:45:00','2022-01-15');
INSERT INTO Invitation(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('1','2022-06','48-240-3675','16:00:00','2022-03-10');
--Appointment
INSERT INTO Appointment(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('1','2022-06','48-240-3675','15:00:00','2021-12-11');
INSERT INTO Appointment(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('2','2022-07','89-946-1060','12:00:00','2022-03-24');
INSERT INTO Appointment(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('3','2022-07','49-186-2024','11:00:00','2022-03-26');
INSERT INTO Appointment(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('4','2022-07','91-172-4543','10:00:00','2022-03-24');
INSERT INTO Appointment(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('5','2022-07','91-172-4543','09:30:00','2021-12-22');
INSERT INTO Appointment(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('6','2022-07','00-918-4814','08:45:00','2022-01-17');
INSERT INTO Appointment(Couple_id, Expected_Time_Frame, Mid, Time, Date)
VALUES ('1','2022-06','55-098-1352','16:00:00','2022-03-12');
--Notes
INSERT INTO Notes(Date, Time, Mid , aTime, aDate, Content)
VALUES('2021-12-11','15:15:00','48-240-3675','15:00:00','2021-12-11','Mother doing great');
INSERT INTO Notes(Date, Time, Mid , aTime, aDate, Content)
VALUES('2022-03-24','12:20:00','89-946-1060','12:00:00','2022-03-24','Mother suffering');
INSERT INTO Notes(Date, Time, Mid , aTime, aDate, Content)
VALUES('2022-03-26','13:20:00','49-186-2024','11:00:00','2022-03-26','Mother looks depressed');
INSERT INTO Notes(Date, Time, Mid , aTime, aDate, Content)
VALUES('2021-12-22','15:30:00','91-172-4543','09:30:00','2021-12-22','Mother needs psychologist assistance');
INSERT INTO Notes(Date, Time, Mid , aTime, aDate, Content)
VALUES('2022-03-27','10:30:00','91-172-4543','10:00:00','2022-03-24','Mother looks thrilled');
INSERT INTO Notes(Date, Time, Mid , aTime, aDate, Content)
VALUES('2022-01-17','10:30:00','00-918-4814','08:45:00','2022-01-17','Mother looks okay');
INSERT INTO Notes(Date, Time, Mid , aTime, aDate, Content)
VALUES('2022-03-12','16:30:00','55-098-1352','16:00:00','2022-03-12','Mother needs further testing');
--Midwifes predictions
INSERT INTO Midwifes_Predictions(Couple_id, Expected_Time_Frame,Mid, Estimate_Date)
VALUES ('1','2022-06','48-240-3675','2022-07-29');
INSERT INTO Midwifes_Predictions(Couple_id, Expected_Time_Frame,Mid, Estimate_Date)
VALUES ('2','2022-07','89-946-1060','2022-07-16');
INSERT INTO Midwifes_Predictions(Couple_id, Expected_Time_Frame,Mid, Estimate_Date)
VALUES ('3','2022-07','49-186-2024','2022-07-18');
INSERT INTO Midwifes_Predictions(Couple_id, Expected_Time_Frame,Mid, Estimate_Date)
VALUES ('4','2022-07','91-172-4543','2022-07-29');
INSERT INTO Midwifes_Predictions(Couple_id, Expected_Time_Frame,Mid, Estimate_Date)
VALUES ('5','2022-07','91-172-4543','2022-07-11');
INSERT INTO Midwifes_Predictions(Couple_id, Expected_Time_Frame,Mid, Estimate_Date)
VALUES ('6','2022-07','00-918-4814','2022-07-06');
--Technicians
INSERT INTO Technicians(Name, ID, Phone_Number)
VALUES ('Leif Russe','86-125-5655','981-654-8009');
INSERT INTO Technicians(Name, ID, Phone_Number)
VALUES ('Keelby Elwell','06-469-3309','137-543-4392');
INSERT INTO Technicians(Name, ID, Phone_Number)
VALUES ('Tristan Gammage','22-762-7499','576-880-7864');
INSERT INTO Technicians(Name, ID, Phone_Number)
VALUES ('Natty Gossling','62-019-6158','198-741-1643');
INSERT INTO Technicians(Name, ID, Phone_Number)
VALUES ('Lynda Dodridge','67-552-7573','619-769-8209');
--Tests
INSERT INTO Tests(Data_taken, Date_done, Date_prescribed, Type, Result, Techid, Couple_id, Expected_Time_Frame,Mid)
VALUES ('2021-12-21','2021-12-21','2021-12-19','Blood Iron',NULL,'86-125-5655','1','2022-06','48-240-3675');
INSERT INTO Tests(Data_taken, Date_done, Date_prescribed, Type, Result, Techid, Couple_id, Expected_Time_Frame,Mid)
VALUES ('2021-12-21','2021-12-21','2021-12-21','Ultrasound',NULL,'06-469-3309','1','2022-06','48-240-3675');
INSERT INTO Tests(Data_taken, Date_done, Date_prescribed, Type, Result, Techid, Couple_id, Expected_Time_Frame,Mid)
VALUES ('2022-03-25','2022-03-25','2022-03-24','Ultrasound',NULL,'86-125-5655','2','2022-07','89-946-1060');
INSERT INTO Tests(Data_taken, Date_done, Date_prescribed, Type, Result, Techid, Couple_id, Expected_Time_Frame,Mid)
VALUES ('2022-03-28','2022-03-28','2022-03-26','Ultrasound',NULL,'22-762-7499','3','2022-07','49-186-2024');
INSERT INTO Tests(Data_taken, Date_done, Date_prescribed, Type, Result, Techid, Couple_id, Expected_Time_Frame,Mid)
VALUES ('2022-03-27','2022-03-27','2022-03-27','Ultrasound',NULL,'62-019-6158','4','2022-07','91-172-4543');
INSERT INTO Tests(Data_taken, Date_done, Date_prescribed, Type, Result, Techid, Couple_id, Expected_Time_Frame,Mid)
VALUES ('2021-12-23','2021-12-23','2021-12-22','Ultrasound',NULL,'67-552-7573','5','2022-07','91-172-4543');
INSERT INTO Tests(Data_taken, Date_done, Date_prescribed, Type, Result, Techid, Couple_id, Expected_Time_Frame,Mid)
VALUES ('2022-01-18','2022-01-18','2022-01-17','Ultrasound',NULL,'62-019-6158','6','2022-07','00-918-4814');
INSERT INTO Tests(Data_taken, Date_done, Date_prescribed, Type, Result, Techid, Couple_id, Expected_Time_Frame,Mid)
VALUES ('2022-03-27','2022-03-27','2022-03-27','Blood Iron',NULL,'62-019-6158','4','2022-07','91-172-4543');
--Ultrasound
INSERT INTO Ultrasound(Tid) VALUES (2);
INSERT INTO Ultrasound(Tid) VALUES (3);
INSERT INTO Ultrasound(Tid) VALUES (4);
INSERT INTO Ultrasound(Tid) VALUES (5);
INSERT INTO Ultrasound(Tid) VALUES (6);
INSERT INTO Ultrasound(Tid) VALUES (7);
--Test Predictions
INSERT INTO Test_Predictions(Tid, Couple_id, Expected_Time_Frame, Test_Predictions)
VALUES (2,'1','2022-06','2022-07-23');
INSERT INTO Test_Predictions(Tid, Couple_id, Expected_Time_Frame, Test_Predictions)
VALUES (3,'2','2022-07','2022-07-17');
INSERT INTO Test_Predictions(Tid, Couple_id, Expected_Time_Frame, Test_Predictions)
VALUES (4,'3','2022-07','2022-07-17');
INSERT INTO Test_Predictions(Tid, Couple_id, Expected_Time_Frame, Test_Predictions)
VALUES (5,'4','2022-07','2022-07-31');
INSERT INTO Test_Predictions(Tid, Couple_id, Expected_Time_Frame, Test_Predictions)
VALUES (6,'5','2022-07','2022-07-08');
INSERT INTO Test_Predictions(Tid, Couple_id, Expected_Time_Frame, Test_Predictions)
VALUES (7,'6','2022-07','2022-07-07');;
