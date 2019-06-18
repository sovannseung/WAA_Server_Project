INSERT INTO app_role (id, role_name, description) VALUES (1, 'ADMIN', 'Admin can do everything');
INSERT INTO app_role (id, role_name, description) VALUES (2, 'FACULTY', 'Faculty can view some report');
INSERT INTO app_role (id, role_name, description) VALUES (3, 'STUDENT', 'Student only view their report');

-- USER
-- non-encrypted password: jwtpass
INSERT INTO app_user (id, studentid, barcode, entryid, first_name, last_name, password, username)
VALUES (991, '000991', 'B000991', 1, 'Faculty', 'Faculty', '$2a$10$qtH0F1m488673KwgAfFXEOWxsoZSeHqqlB/8BTt3a6gsI5c2mdlfe', 'faculty.faculty');

INSERT INTO app_user (id, studentid, barcode, entryid, first_name, last_name, password, username)
VALUES (992, '000992', 'B000992', 1, 'Admin', 'Admin', '$2a$10$qtH0F1m488673KwgAfFXEOWxsoZSeHqqlB/8BTt3a6gsI5c2mdlfe', 'admin.admin');

-- Setup sample 5 Users
INSERT INTO app_user (id, studentid, barcode, entryid, first_name, last_name, password, username)
VALUES (1, '000001', 'B000001', 1, 'User', '01', '$2a$10$qtH0F1m488673KwgAfFXEOWxsoZSeHqqlB/8BTt3a6gsI5c2mdlfe', 'user01');
INSERT INTO app_user (id, studentid, barcode, entryid, first_name, last_name, password, username)
VALUES (2, '000002', 'B000002', 1, 'User', '02', '$2a$10$qtH0F1m488673KwgAfFXEOWxsoZSeHqqlB/8BTt3a6gsI5c2mdlfe', 'user02');
INSERT INTO app_user (id, studentid, barcode, entryid, first_name, last_name, password, username)
VALUES (3, '000003', 'B000003', 2, 'User', '03', '$2a$10$qtH0F1m488673KwgAfFXEOWxsoZSeHqqlB/8BTt3a6gsI5c2mdlfe', 'user03');
INSERT INTO app_user (id, studentid, barcode, entryid, first_name, last_name, password, username)
VALUES (4, '000004', 'B000004', 2, 'User', '04', '$2a$10$qtH0F1m488673KwgAfFXEOWxsoZSeHqqlB/8BTt3a6gsI5c2mdlfe', 'user04');
INSERT INTO app_user (id, studentid, barcode, entryid, first_name, last_name, password, username)
VALUES (5, '000005', 'B000005', 3, 'User', '05', '$2a$10$qtH0F1m488673KwgAfFXEOWxsoZSeHqqlB/8BTt3a6gsI5c2mdlfe', 'user05');
INSERT INTO app_user (id, studentid, barcode, entryid, first_name, last_name, password, username)
VALUES (6, '000006', 'B000006', 3, 'User', '06', '$2a$10$qtH0F1m488673KwgAfFXEOWxsoZSeHqqlB/8BTt3a6gsI5c2mdlfe', 'user06');

-- Setup Role
INSERT INTO user_role(user_id, role_id) VALUES(991,1);
INSERT INTO user_role(user_id, role_id) VALUES(992,2);
INSERT INTO user_role(user_id, role_id) VALUES(1,3);
INSERT INTO user_role(user_id, role_id) VALUES(2,3);
INSERT INTO user_role(user_id, role_id) VALUES(3,3);
INSERT INTO user_role(user_id, role_id) VALUES(4,3);
INSERT INTO user_role(user_id, role_id) VALUES(5,3);

-- Setup Entry
INSERT INTO Entry (ENTRYID, ENTRYNAME) VALUES (1,'2018-November Entry');
INSERT INTO Entry (ENTRYID, ENTRYNAME) VALUES (2,'2019-February Entry');
INSERT INTO Entry (ENTRYID, ENTRYNAME) VALUES (3,'2019-May Entry');

-- Setup Block
INSERT INTO Block (BLOCKID, BLOCKNAME, STARTDATE, ENDDATE, ISSATURDAYCOUNT, ISSUNDAYCOUNT)
VALUES (1, '2018-November Block', '2018-11-01', '2018-11-30', 'true', 'false');
INSERT INTO Block (BLOCKID, BLOCKNAME, STARTDATE, ENDDATE, ISSATURDAYCOUNT, ISSUNDAYCOUNT)
VALUES (2, '2018-December Block', '2018-12-01', '2018-12-30', 'true', 'false');
INSERT INTO Block (BLOCKID, BLOCKNAME, STARTDATE, ENDDATE, ISSATURDAYCOUNT, ISSUNDAYCOUNT)
VALUES (3, '2019-January Block', '2019-01-01', '2019-01-30', 'true', 'false');
INSERT INTO Block (BLOCKID, BLOCKNAME, STARTDATE, ENDDATE, ISSATURDAYCOUNT, ISSUNDAYCOUNT)
VALUES (4, '2018-February Block', '2019-02-01', '2019-02-28', 'true', 'false');
INSERT INTO Block (BLOCKID, BLOCKNAME, STARTDATE, ENDDATE, ISSATURDAYCOUNT, ISSUNDAYCOUNT)
VALUES (5, '2018-March Block', '2019-03-01', '2019-03-30', 'true', 'false');
INSERT INTO Block (BLOCKID, BLOCKNAME, STARTDATE, ENDDATE, ISSATURDAYCOUNT, ISSUNDAYCOUNT)
VALUES (6, '2018-April Block', '2019-04-01', '2019-04-30', 'true', 'false');
INSERT INTO Block (BLOCKID, BLOCKNAME, STARTDATE, ENDDATE, ISSATURDAYCOUNT, ISSUNDAYCOUNT)
VALUES (7, '2018-May Block', '2019-05-01', '2019-05-30', 'true', 'false');
INSERT INTO Block (BLOCKID, BLOCKNAME, STARTDATE, ENDDATE, ISSATURDAYCOUNT, ISSUNDAYCOUNT)
VALUES (8, '2018-June Block', '2019-06-01', '2019-06-30', 'true', 'false');
INSERT INTO Block (BLOCKID, BLOCKNAME, STARTDATE, ENDDATE, ISSATURDAYCOUNT, ISSUNDAYCOUNT)
VALUES (9, '2018-July Block', '2019-07-01', '2019-07-30', 'true', 'false');

-- Setup Course
INSERT INTO Course (COURSEID, COURSENAME) VALUES (1, 'Course 01');
INSERT INTO Course (COURSEID, COURSENAME) VALUES (2, 'Course 02');
INSERT INTO Course (COURSEID, COURSENAME) VALUES (3, 'Course 03');
INSERT INTO Course (COURSEID, COURSENAME) VALUES (4, 'Course 04');
INSERT INTO Course (COURSEID, COURSENAME) VALUES (5, 'Course 05');
INSERT INTO Course (COURSEID, COURSENAME) VALUES (6, 'Course 06');
INSERT INTO Course (COURSEID, COURSENAME) VALUES (7, 'Course 07');
INSERT INTO Course (COURSEID, COURSENAME) VALUES (8, 'Course 08');
INSERT INTO Course (COURSEID, COURSENAME) VALUES (9, 'Course 09');
INSERT INTO Course (COURSEID, COURSENAME) VALUES (10, 'Course 10');


-- Setup Coursedetail
-- *********** Student Entry:[2018-November] ***********
-- Block:[2018-November] has 2 courses: (course 01 & course 02) and 2 students (1 & 2)
INSERT INTO COURSEDETAIL (COURSEDETAILID, BLOCKID, COURSEID, STUDENTID) VALUES (1, 1, 1, '000001');
INSERT INTO COURSEDETAIL (COURSEDETAILID, BLOCKID, COURSEID, STUDENTID) VALUES (2, 1, 2, '000002');
-- Block:[2018-December] has 2 courses: (course 03 & course 04) and 2 students (1 & 2)
INSERT INTO COURSEDETAIL (COURSEDETAILID, BLOCKID, COURSEID, STUDENTID) VALUES (3, 2, 3, '000001');
INSERT INTO COURSEDETAIL (COURSEDETAILID, BLOCKID, COURSEID, STUDENTID) VALUES (4, 2, 4, '000002');
-- Block:[2019-January] has 2 courses: (course 05 & course 06) and 2 students (1 & 2)
INSERT INTO COURSEDETAIL (COURSEDETAILID, BLOCKID, COURSEID, STUDENTID) VALUES (5, 3, 5, '000001');
INSERT INTO COURSEDETAIL (COURSEDETAILID, BLOCKID, COURSEID, STUDENTID) VALUES (6, 3, 6, '000002');

-- *********** Student Entry:[2019-February] ***********
-- Block:[2019-February] has 2 courses: (course 01 & course 02) and 2 students (3 & 4)
INSERT INTO COURSEDETAIL (COURSEDETAILID, BLOCKID, COURSEID, STUDENTID) VALUES (7, 4, 1, '000003');
INSERT INTO COURSEDETAIL (COURSEDETAILID, BLOCKID, COURSEID, STUDENTID) VALUES (8, 4, 2, '000004');
-- Block:[2019-March] has 2 courses: (course 03 & course 04) and 2 students (3 & 4)
INSERT INTO COURSEDETAIL (COURSEDETAILID, BLOCKID, COURSEID, STUDENTID) VALUES (9, 5, 3, '000003');
INSERT INTO COURSEDETAIL (COURSEDETAILID, BLOCKID, COURSEID, STUDENTID) VALUES (10, 5, 4, '000004');
-- Block:[2019-April] has 2 courses: (course 05 & course 06) and 2 students (3 & 4)
INSERT INTO COURSEDETAIL (COURSEDETAILID, BLOCKID, COURSEID, STUDENTID) VALUES (11, 6, 5, '000003');
INSERT INTO COURSEDETAIL (COURSEDETAILID, BLOCKID, COURSEID, STUDENTID) VALUES (12, 6, 6, '000004');

-- *********** Student Entry:[2019-May] ***********
-- Block:[2019-May] has 2 courses: (course 01 & course 02) and 2 students (5 & 6)
INSERT INTO COURSEDETAIL (COURSEDETAILID, BLOCKID, COURSEID, STUDENTID) VALUES (13, 7, 1, '000005');
INSERT INTO COURSEDETAIL (COURSEDETAILID, BLOCKID, COURSEID, STUDENTID) VALUES (14, 7, 2, '000006');
-- Block:[2019-June] has 2 courses: (course 03 & course 04) and 2 students (5 & 6)
INSERT INTO COURSEDETAIL (COURSEDETAILID, BLOCKID, COURSEID, STUDENTID) VALUES (15, 8, 3, '000005');
INSERT INTO COURSEDETAIL (COURSEDETAILID, BLOCKID, COURSEID, STUDENTID) VALUES (16, 8, 4, '000006');
-- Block:[2019-July] has 2 courses: (course 05 & course 06) and 2 students (5 & 6)
INSERT INTO COURSEDETAIL (COURSEDETAILID, BLOCKID, COURSEID, STUDENTID) VALUES (17, 9, 5, '000005');
INSERT INTO COURSEDETAIL (COURSEDETAILID, BLOCKID, COURSEID, STUDENTID) VALUES (18, 9, 6, '000006');


-- Setup Uploaddata
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (1, 'B000001', '2018-11-01', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (2, 'B000001', '2018-11-02', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (3, 'B000001', '2018-11-03', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (4, 'B000001', '2018-11-05', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (5, 'B000001', '2018-11-07', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (6, 'B000001', '2018-11-08', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (7, 'B000001', '2018-11-09', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (8, 'B000001', '2018-11-10', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (9, 'B000001', '2018-11-12', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (10, 'B000001', '2018-11-14', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (11, 'B000001', '2018-11-15', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (12, 'B000001', '2018-11-16', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (13, 'B000001', '2018-11-17', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (14, 'B000001', '2018-11-19', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (15, 'B000001', '2018-11-20', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (16, 'B000001', '2018-11-21', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (17, 'B000001', '2018-11-23', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (18, 'B000001', '2018-11-24', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (19, 'B000001', '2018-11-26', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (20, 'B000001', '2018-11-27', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (21, 'B000001', '2018-11-28', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (22, 'B000001', '2018-11-29', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (23, 'B000001', '2018-11-30', 'AM', 'DB');


INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (24, 'B000002', '2018-11-01', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (25, 'B000002', '2018-11-02', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (26, 'B000002', '2018-11-03', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (27, 'B000002', '2018-11-07', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (28, 'B000002', '2018-11-08', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (29, 'B000002', '2018-11-09', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (30, 'B000002', '2018-11-10', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (31, 'B000002', '2018-11-14', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (32, 'B000002', '2018-11-15', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (33, 'B000002', '2018-11-16', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (34, 'B000002', '2018-11-17', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (35, 'B000002', '2018-11-19', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (36, 'B000002', '2018-11-20', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (37, 'B000002', '2018-11-21', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (38, 'B000002', '2018-11-23', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (39, 'B000002', '2018-11-24', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (40, 'B000002', '2018-11-26', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (41, 'B000002', '2018-11-27', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (42, 'B000002', '2018-11-28', 'AM', 'DB');
INSERT INTO Uploaddata(ID, BARCODE, ATTENDANCEDATE, TYPES , LOCATION) VALUES (43, 'B000002', '2018-11-29', 'AM', 'DB');





















-- Populate random city table

-- INSERT INTO random_city(id, name) VALUES (1, 'Bamako');
-- INSERT INTO random_city(id, name) VALUES (2, 'Nonkon');
-- INSERT INTO random_city(id, name) VALUES (3, 'Houston');
-- INSERT INTO random_city(id, name) VALUES (4, 'Toronto');
-- INSERT INTO random_city(id, name) VALUES (5, 'New York City');
-- INSERT INTO random_city(id, name) VALUES (6, 'Mopti');
-- INSERT INTO random_city(id, name) VALUES (7, 'Koulikoro');
-- INSERT INTO random_city(id, name) VALUES (8, 'Moscow');
