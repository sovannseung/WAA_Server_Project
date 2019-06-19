
INSERT INTO entry (id,name) VALUES (1,'2016-November');
INSERT INTO entry (id,name) VALUES (2,'2016-December');


--STUDENTs
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(1 ,'7888', '986842',1,'Sovann','Seung' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(2 ,'7326', '986888',2,'Solum','Jung Rana' );


--FACULTYs
INSERT INTO faculty (id,first_name,last_name) VALUES (1 ,'Edwin','Bernal' );
INSERT INTO faculty (id,first_name,last_name) VALUES (2 ,'Babita','Lamichhane' );

--CREDENTIALs
INSERT INTO credential (id,email, password,student_id) VALUES (1 ,'sseung@mum.edu', '12345',1); -- Student
INSERT INTO credential (id,email, password,student_id) VALUES (2 ,'sjungrana@mum.edu', '12345',2); -- Student

INSERT INTO credential (id,email, password,faculty_id) VALUES (3 ,'ebernal@mum.edu', '12345',1); -- Faculty
INSERT INTO credential (id,email, password,faculty_id) VALUES (4 ,'blamichhane@mum.edu', '12345',2); -- Admin


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
INSERT INTO block (id,start_Date,end_Date,name) VALUES(4 ,'2017-02-01', '2017-02-28','2017-February' );

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
INSERT INTO section (id,block_id, course_id,faculty_id,canceled_days,available_days) VALUES (4 ,3, 3,1,0,22);

--STUDENT SECTIONs
INSERT INTO student_sections (student_list_id,sections_id) VALUES (1 ,1);
INSERT INTO student_sections (student_list_id,sections_id) VALUES (2 ,1);
INSERT INTO student_sections (student_list_id,sections_id) VALUES (1 ,3);
INSERT INTO student_sections (student_list_id,sections_id) VALUES (2 ,3);



-- All other student
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(3 ,'7698', '900003',2,'3','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(4 ,'7417', '900004',2,'4','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(5 ,'7839', '900005',2,'5','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(6 ,'7284', '900006',2,'6','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(7 ,'7482', '900007',2,'7','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(8 ,'7938', '900008',2,'8','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(9 ,'7870', '900009',2,'9','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(10 ,'7623', '900010',2,'10','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(11 ,'6047', '900011',2,'11','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(12 ,'6724', '900012',2,'12','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(13 ,'7649', '900013',2,'13','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(14 ,'7664', '900014',2,'14','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(15 ,'7532', '900015',2,'15','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(16 ,'7763', '900016',2,'16','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(17 ,'7409', '900017',2,'17','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(18 ,'7862', '900018',2,'18','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(19 ,'7946', '900019',2,'19','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(20 ,'7433', '900020',2,'20','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(21 ,'7722', '900021',2,'21','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(22 ,'7375', '900022',2,'22','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(23 ,'7359', '900023',2,'23','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(24 ,'7441', '900024',2,'24','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(25 ,'7490', '900025',2,'25','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(26 ,'7474', '900026',2,'26','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(27 ,'7334', '900027',2,'27','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(28 ,'7342', '900028',2,'28','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(29 ,'7672', '900029',2,'29','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(30 ,'7383', '900030',2,'30','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(31 ,'5981', '900031',2,'31','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(32 ,'8001', '900032',2,'32','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(33 ,'4514', '900033',2,'33','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(34 ,'5551', '900034',2,'34','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(35 ,'6278', '900035',2,'35','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(36 ,'7748', '900036',2,'36','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(37 ,'7847', '900037',2,'37','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(38 ,'7565', '900038',2,'38','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(39 ,'7466', '900039',2,'39','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(40 ,'7425', '900040',2,'40','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(41 ,'7599', '900041',2,'41','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(42 ,'7714', '900042',2,'42','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(43 ,'7920', '900043',2,'43','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(44 ,'7656', '900044',2,'44','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(45 ,'7896', '900045',2,'45','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(46 ,'7573', '900046',2,'46','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(47 ,'7771', '900047',2,'47','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(48 ,'7581', '900048',2,'48','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(49 ,'5809', '900049',2,'49','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(50 ,'7631', '900050',2,'50','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(51 ,'6740', '900051',2,'51','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(52 ,'7805', '900052',2,'52','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(53 ,'7516', '900053',2,'53','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(54 ,'7540', '900054',2,'54','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(55 ,'5593', '900055',2,'55','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(56 ,'5783', '900056',2,'56','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(57 ,'7391', '900057',2,'57','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(58 ,'7730', '900058',2,'58','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(59 ,'7706', '900059',2,'59','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(60 ,'8076', '900060',2,'60','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(61 ,'8092', '900061',2,'61','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(62 ,'8118', '900062',2,'62','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(63 ,'7557', '900063',2,'63','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(64 ,'7755', '900064',2,'64','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(65 ,'7953', '900065',2,'65','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(66 ,'3440', '900066',2,'66','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(67 ,'2401', '900067',2,'67','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(68 ,'8050', '900068',2,'68','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(69 ,'7524', '900069',2,'69','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(70 ,'2780', '900070',2,'70','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(71 ,'7615', '900071',2,'71','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(72 ,'5817', '900072',2,'72','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(73 ,'7995', '900073',2,'73','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(74 ,'7680', '900074',2,'74','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(75 ,'7821', '900075',2,'75','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(76 ,'6583', '900076',2,'76','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(77 ,'6542', '900077',2,'77','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(78 ,'3820', '900078',2,'78','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(79 ,'8191', '900079',2,'79','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(80 ,'8100', '900080',2,'80','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(81 ,'8126', '900081',2,'81','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(82 ,'8134', '900082',2,'82','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(83 ,'1585', '900083',2,'83','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(84 ,'7367', '900084',2,'84','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(85 ,'5908', '900085',2,'85','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(86 ,'6187', '900086',2,'86','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(87 ,'6195', '900087',2,'87','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(88 ,'5924', '900088',2,'88','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(89 ,'5676', '900089',2,'89','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(90 ,'6070', '900090',2,'90','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(91 ,'6096', '900091',2,'91','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(92 ,'5106', '900092',2,'92','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(93 ,'4893', '900093',2,'93','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(94 ,'5791', '900094',2,'94','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(95 ,'5361', '900095',2,'95','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(96 ,'4943', '900096',2,'96','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(97 ,'7508', '900097',2,'97','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(98 ,'5767', '900098',2,'98','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(99 ,'6062', '900099',2,'99','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(100 ,'8316', '900100',2,'100','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(101 ,'7458', '900101',2,'101','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(102 ,'8563', '900102',2,'102','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(103 ,'8456', '900103',2,'103','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(104 ,'7854', '900104',2,'104','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(105 ,'8670', '900105',2,'105','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(106 ,'8696', '900106',2,'106','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(107 ,'8647', '900107',2,'107','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(108 ,'8746', '900108',2,'108','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(109 ,'8712', '900109',2,'109','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(110 ,'8381', '900110',2,'110','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(111 ,'8688', '900111',2,'111','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(112 ,'8464', '900112',2,'112','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(113 ,'8480', '900113',2,'113','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(114 ,'8498', '900114',2,'114','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(115 ,'8753', '900115',2,'115','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(116 ,'8787', '900116',2,'116','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(117 ,'4828', '900117',2,'117','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(118 ,'8704', '900118',2,'118','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(119 ,'8357', '900119',2,'119','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(120 ,'8472', '900120',2,'120','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(121 ,'8506', '900121',2,'121','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(122 ,'8738', '900122',2,'122','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(123 ,'8720', '900123',2,'123','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(124 ,'8373', '900124',2,'124','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(125 ,'8555', '900125',2,'125','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(126 ,'8365', '900126',2,'126','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(127 ,'8407', '900127',2,'127','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(128 ,'8605', '900128',2,'128','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(129 ,'8597', '900129',2,'129','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(130 ,'8514', '900130',2,'130','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(131 ,'8415', '900131',2,'131','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(132 ,'8621', '900132',2,'132','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(133 ,'8795', '900133',2,'133','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(134 ,'8589', '900134',2,'134','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(135 ,'8423', '900135',2,'135','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(136 ,'8639', '900136',2,'136','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(137 ,'8431', '900137',2,'137','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(138 ,'8548', '900138',2,'138','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(139 ,'8530', '900139',2,'139','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(140 ,'8654', '900140',2,'140','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(141 ,'8662', '900141',2,'141','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(142 ,'8779', '900142',2,'142','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(143 ,'8761', '900143',2,'143','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(144 ,'5429', '900144',2,'144','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(145 ,'8571', '900145',2,'145','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(146 ,'8522', '900146',2,'146','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(147 ,'8449', '900147',2,'147','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(148 ,'8399', '900148',2,'148','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(149 ,'8613', '900149',2,'149','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(150 ,'7619', '900150',2,'150','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(151 ,'7979', '900151',2,'151','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(152 ,'4919', '900152',2,'152','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(153 ,'4844', '900153',2,'153','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(154 ,'5189', '900154',2,'154','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(155 ,'4927', '900155',2,'155','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(156 ,'5114', '900156',2,'156','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(157 ,'5346', '900157',2,'157','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(158 ,'5833', '900158',2,'158','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(159 ,'4935', '900159',2,'159','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(160 ,'5353', '900160',2,'160','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(161 ,'5635', '900161',2,'161','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(162 ,'5825', '900162',2,'162','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(163 ,'4068', '900163',2,'163','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(164 ,'5932', '900164',2,'164','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(165 ,'5544', '900165',2,'165','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(166 ,'5650', '900166',2,'166','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(167 ,'4869', '900167',2,'167','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(168 ,'5452', '900168',2,'168','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(169 ,'5239', '900169',2,'169','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(170 ,'4851', '900170',2,'170','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(171 ,'5155', '900171',2,'171','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(172 ,'5890', '900172',2,'172','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(173 ,'8266', '900173',2,'173','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(174 ,'5643', '900174',2,'174','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(175 ,'5866', '900175',2,'175','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(176 ,'4950', '900176',2,'176','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(177 ,'5205', '900177',2,'177','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(178 ,'5312', '900178',2,'178','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(179 ,'5627', '900179',2,'179','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(180 ,'5510', '900180',2,'180','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(181 ,'5460', '900181',2,'181','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(182 ,'5163', '900182',2,'182','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(183 ,'5098', '900183',2,'183','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(184 ,'4877', '900184',2,'184','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(185 ,'6088', '900185',2,'185','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(186 ,'5007', '900186',2,'186','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(187 ,'7912', '900187',2,'187','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(188 ,'6617', '900188',2,'188','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(189 ,'5130', '900189',2,'189','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(190 ,'5973', '900190',2,'190','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(191 ,'4984', '900191',2,'191','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(192 ,'4992', '900192',2,'192','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(193 ,'5957', '900193',2,'193','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(194 ,'5718', '900194',2,'194','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(195 ,'5486', '900195',2,'195','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(196 ,'5387', '900196',2,'196','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(197 ,'5031', '900197',2,'197','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(198 ,'5684', '900198',2,'198','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(199 ,'6835', '900199',2,'199','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(200 ,'5320', '900200',2,'200','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(201 ,'5338', '900201',2,'201','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(202 ,'5197', '900202',2,'202','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(203 ,'5692', '900203',2,'203','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(204 ,'5379', '900204',2,'204','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(205 ,'5841', '900205',2,'205','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(206 ,'5122', '900206',2,'206','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(207 ,'5700', '900207',2,'207','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(208 ,'5296', '900208',2,'208','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(209 ,'5171', '900209',2,'209','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(210 ,'5304', '900210',2,'210','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(211 ,'5254', '900211',2,'211','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(212 ,'5882', '900212',2,'212','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(213 ,'2848', '900213',2,'213','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(214 ,'5445', '900214',2,'214','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(215 ,'2921', '900215',2,'215','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(216 ,'5569', '900216',2,'216','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(217 ,'5437', '900217',2,'217','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(218 ,'5734', '900218',2,'218','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(219 ,'5049', '900219',2,'219','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(220 ,'5916', '900220',2,'220','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(221 ,'9042', '900221',2,'221','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(222 ,'5023', '900222',2,'222','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(223 ,'5395', '900223',2,'223','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(224 ,'5478', '900224',2,'224','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(225 ,'5775', '900225',2,'225','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(226 ,'5080', '900226',2,'226','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(227 ,'5403', '900227',2,'227','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(228 ,'5072', '900228',2,'228','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(229 ,'5858', '900229',2,'229','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(230 ,'5577', '900230',2,'230','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(231 ,'6104', '900231',2,'231','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(232 ,'5536', '900232',2,'232','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(233 ,'5528', '900233',2,'233','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(234 ,'5585', '900234',2,'234','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(235 ,'3317', '900235',2,'235','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(236 ,'5056', '900236',2,'236','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(237 ,'4976', '900237',2,'237','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(238 ,'5619', '900238',2,'238','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(239 ,'5502', '900239',2,'239','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(240 ,'5742', '900240',2,'240','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(241 ,'5411', '900241',2,'241','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(242 ,'7797', '900242',2,'242','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(243 ,'8167', '900243',2,'243','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(244 ,'5601', '900244',2,'244','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(245 ,'5940', '900245',2,'245','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(246 ,'5064', '900246',2,'246','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(247 ,'8217', '900247',2,'247','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(248 ,'5288', '900248',2,'248','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(249 ,'5965', '900249',2,'249','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(250 ,'5270', '900250',2,'250','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(251 ,'6120', '900251',2,'251','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(252 ,'4968', '900252',2,'252','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(253 ,'5015', '900253',2,'253','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(254 ,'4885', '900254',2,'254','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(255 ,'6054', '900255',2,'255','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(256 ,'5759', '900256',2,'256','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(257 ,'4901', '900257',2,'257','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(258 ,'6039', '900258',2,'258','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(259 ,'5262', '900259',2,'259','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(260 ,'5213', '900260',2,'260','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(261 ,'7904', '900261',2,'261','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(262 ,'6021', '900262',2,'262','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(263 ,'8525', '900263',2,'263','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(264 ,'6351', '900264',2,'264','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(265 ,'7987', '900265',2,'265','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(266 ,'9919', '900266',2,'266','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(267 ,'5726', '900267',2,'267','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(268 ,'5999', '900268',2,'268','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(269 ,'4886', '900269',2,'269','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(270 ,'6625', '900270',2,'270','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(271 ,'6138', '900271',2,'271','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(272 ,'9927', '900272',2,'272','Student' );
INSERT INTO student (id,barcode, student_Id,entry_id,first_name,last_name) VALUES(273 ,'6286', '900273',2,'273','Student' );

