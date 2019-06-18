INSERT INTO app_role (id, role_name, description) VALUES (1, 'ADMIN', 'Admin can do everything');
INSERT INTO app_role (id, role_name, description) VALUES (2, 'FACULTY', 'Faculty can view some report');
INSERT INTO app_role (id, role_name, description) VALUES (3, 'STUDENT', 'Student only view their report');

-- USER
-- non-encrypted password: jwtpass
INSERT INTO app_user (id, studentid, barcode, entryid, first_name, last_name, password, username)
VALUES (1, '986842', '00001', 1, 'John', 'Doe', '$2a$10$qtH0F1m488673KwgAfFXEOWxsoZSeHqqlB/8BTt3a6gsI5c2mdlfe', 'faculty.faculty');

INSERT INTO app_user (id, studentid, barcode, entryid, first_name, last_name, password, username)
VALUES (2, '986843', '00002', 1, 'Admin', 'Admin', '$2a$10$qtH0F1m488673KwgAfFXEOWxsoZSeHqqlB/8BTt3a6gsI5c2mdlfe', 'admin.admin');

INSERT INTO user_role(user_id, role_id) VALUES(1,2);
INSERT INTO user_role(user_id, role_id) VALUES(2,1);

INSERT INTO Entry (ENTRYID, ENTRYNAME) VALUES (1,'2018-November');
INSERT INTO Entry (ENTRYID, ENTRYNAME) VALUES (2,'2019-Feb');

































-- Populate random city table

INSERT INTO random_city(id, name) VALUES (1, 'Bamako');
INSERT INTO random_city(id, name) VALUES (2, 'Nonkon');
INSERT INTO random_city(id, name) VALUES (3, 'Houston');
INSERT INTO random_city(id, name) VALUES (4, 'Toronto');
INSERT INTO random_city(id, name) VALUES (5, 'New York City');
INSERT INTO random_city(id, name) VALUES (6, 'Mopti');
INSERT INTO random_city(id, name) VALUES (7, 'Koulikoro');
INSERT INTO random_city(id, name) VALUES (8, 'Moscow');
