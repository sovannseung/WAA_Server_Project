
INSERT INTO entry (id,name) VALUES (1,'2016-November');
INSERT INTO entry (id,name) VALUES (2,'2016-December');


--STUDENTs
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(1 ,'7888', '986842',1,'Sovann','Seung' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(2 ,'7326', '986888',2,'Solum','Jung Rana' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(3 ,'1234', '984835',1,'Babita','Lami' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(4 ,'5678', '986924',2,'Gregorio','Bernal' );


--FACULTYs
INSERT INTO faculty (id,first_name,last_name) VALUES (1 ,'Edwin','Bernal' );
INSERT INTO faculty (id,first_name,last_name) VALUES (2 ,'Babita','Lamichhane' );

--CREDENTIALs
INSERT INTO credential (id,email, password,student_id) VALUES (1 ,'sseung@mum.edu', '12345',1);
INSERT INTO credential (id,email, password,student_id) VALUES (2 ,'sjungrana@mum.edu', '12345',2);

INSERT INTO credential (id,email, password,faculty_id) VALUES (3 ,'ebernal@mum.edu', '12345',1);
INSERT INTO credential (id,email, password,faculty_id) VALUES (4 ,'blamichhane@mum.edu', '12345',2);



--ROLEs
INSERT INTO role (id,name) VALUES (2 ,'SAVE_ENTRY');
INSERT INTO role (id,name) VALUES (3 ,'SAVE_BLOCK');
INSERT INTO role (id,name) VALUES (4 ,'VIEW_BLOCK_REPORT');
INSERT INTO role (id,name) VALUES (5 ,'VIEW_ENTRY_REPORT');
INSERT INTO role (id,name) VALUES (6 ,'VIEW_EXTRA_CREDIT_REPORT');
INSERT INTO role (id,name) VALUES (7 ,'DATA_IMPORT');
INSERT INTO role (id,name) VALUES (8 ,'BLOCK_REPORT_FOR_FACULTY');
INSERT INTO role (id,name) VALUES (9 ,'TMCHECK_CRUD');



--CREDENTIAL ROLEs
INSERT INTO credential_roles (credential_id,roles_id) VALUES  (1 ,4);
INSERT INTO credential_roles (credential_id,roles_id) VALUES  (2 ,4);


INSERT INTO credential_roles (credential_id,roles_id) VALUES  (3 ,5);
INSERT INTO credential_roles (credential_id,roles_id) VALUES  (3 ,6);
INSERT INTO credential_roles (credential_id,roles_id) VALUES  (3 ,8);


INSERT INTO credential_roles (credential_id,roles_id) VALUES  (4 ,2);
INSERT INTO credential_roles (credential_id,roles_id) VALUES  (4 ,3);
INSERT INTO credential_roles (credential_id,roles_id) VALUES  (4 ,5);
INSERT INTO credential_roles (credential_id,roles_id) VALUES  (4 ,6);
INSERT INTO credential_roles (credential_id,roles_id) VALUES  (4 ,7);
INSERT INTO credential_roles (credential_id,roles_id) VALUES  (4 ,9);
INSERT INTO credential_roles (credential_id,roles_id) VALUES  (4 ,8);



--BLOCKs
INSERT INTO block (id,start_Date,end_Date,name) VALUES(1 ,'2016-11-01', '2016-11-30','2016-November' );
INSERT INTO block (id,start_Date,end_Date,name) VALUES(2,'2016-12-01', '2016-12-30','2016-December' );
INSERT INTO block (id,start_Date,end_Date,name) VALUES(3 ,'2017-01-01', '2017-01-30','2017-January' );

--LOCATIONs
INSERT INTO location (id,location_name,location_code) VALUES (1 ,'Dolby Hall','DB' );
INSERT INTO location (id,location_name,location_code) VALUES (2 ,'Art Center','AC' );


--COURSEs
INSERT INTO course (id,course_name) VALUES (1 ,'MWA' );
INSERT INTO course (id,course_name) VALUES (2 ,'EA' );
INSERT INTO course (id,course_name) VALUES (3 ,'WAA' );
INSERT INTO course (id,course_name) VALUES (4 ,'WAP' );
INSERT INTO course (id,course_name) VALUES (5 ,'Algorithms' );
INSERT INTO course (id,course_name) VALUES (6 ,'ASD' );
INSERT INTO course (id,course_name) VALUES (7 ,'MPP' );
INSERT INTO course (id,course_name) VALUES (8 ,'FPP' );





--SECTIONs
INSERT INTO section (id,block_id, course_id,faculty_id,canceled_days,available_days) VALUES (1 ,1, 1,1,0,22);
INSERT INTO section (id,block_id, course_id,faculty_id,canceled_days,available_days) VALUES (2 ,1, 3,2,0,22);
INSERT INTO section (id,block_id, course_id,faculty_id,canceled_days,available_days) VALUES (3 ,2, 3,1,0,22);


--STUDENT SECTIONs
INSERT INTO student_sections (student_list_id,sections_id) VALUES (1 ,1);
INSERT INTO student_sections (student_list_id,sections_id) VALUES (2 ,1);
INSERT INTO student_sections (student_list_id,sections_id) VALUES (1 ,3);
INSERT INTO student_sections (student_list_id,sections_id) VALUES (2 ,3);


