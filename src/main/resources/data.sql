
INSERT INTO degree_program (id, name) VALUES
('IBA',	'Informatik Bachelor');

INSERT INTO language (iso_code, name) VALUES
('DE',	'Deutsch'),
('EN',	'Englisch');

INSERT INTO module (id, code, name, credits, semester_model,intensive_week_model, fall_semester_model, spring_semester_model, type) VALUES
(1,'AD','Algorithmen & Datenstrukturen',6,true,false,true,true,0),
(2,'ANLIS','Analysis',6,true,false,true,true,0),
(3,'ASTAT','Applied Statistics for Data Science',3,true,false,true,true,1),
(4,'APPE','Applikationsentwicklung',6,true,false,false,true,0),
(5,'CNA','Computer & Network Architecture',6,true,false,true,true,0),
(6,'DBS','Datenbanksysteme',6,true,false,true,true,1),
(7,'DMATH','Diskrete Mathematik',6,true,false,true,true,0),
(8,'ISF','Information Security Fundamentals',3,true,false,true,true,0),
(9,'ITEO','IT-System Engineering & Operation',6,true,false,true,true,0),
(10,'MOD','Modellierung Grundlagen',3,true,false,true,true,0),
(11,'OOP','Objektorientierte Programmierung',6,true,false,true,true,0),
(12,'PLAB','Programmier-Labor',3,true,false,true,false,0),
(13,'PMRE','Project Management &Requirement Engineering',3,true,false,true,true,1),
(14,'SWDE','Software-Development',6,true,false,true,true,1),
(15,'VSK','Verteilte Systeme & Komponenten',6,true,false,true,true,1),
(16,'BAA','Bachelorarbeit',12,true,false,true,true,4),
(17,'WIPRO','Wirtschaftsprojekt',6,true,false,true,true,4),
(18,'FKOM','Fachkommunikation',3,true,false,true,true,4),
(19,'PMB','Project Management Basics',3,true,false,true,true,4),
(20,'PTA','Projekt und Teamarbeit',6,true,false,true,true,4),
(21,'ACBA','Accounting Basics',3,true,false,true,true,2),
(22,'AEMBS','Advanced Embedded Systems',3,true,false,true,true,2),
(23,'AIOT','Advanced Internet of Things',3,true,false,false,true,2),
(24,'AITEC','Advances Internet Technologies',3,true,false,true,false,2),
(25,'ADPENTEST','Advanced Penetration Testing',3,true,false,true,false,2),
(26,'AROB','Angewandte industrielle Robotik',6,true,false,true,true,2),
(27,'MAT2','Angewandte Mathematik 2',3,true,false,false,true,2),
(28,'BW','Betriebswirtschaft im digitalen Umfeld',3,true,false,false,true,2),
(29,'BDM','Big Data Management',3,true,false,true,false,2),
(30,'CSA','C# in Action',3,true,false,true,false,2),
(31,'CHMA','Change Management',3,true,false,true,false,2),
(32,'CPLAB','Cloud Programming Lab',3,false,true,true,false,2),
(33,'COBAU','Compilerbau',3,true,false,true,false,2),
(34,'CNF','Computer Network Fundamentals',3,true,false,true,true,2),
(35,'CCNA','Computer Networks',3,true,false,false,true,2),
(36,'INFKOL','Computer Science Hot Topics',3,true,false,false,true,2),
(37,'CONS','Consulting',3,true,false,true,false,2),
(38,'ICS.CRS','Crisis Recovery Strategies',3,true,false,true,true,2),
(39,'CYBER','Cyber Defence',3,true,false,true,true,2),
(40,'DSO','Datenschutz in Organisation',3,true,false,true,false,2),
(41,'DCEX','Digital Customer Experience',3,true,false,true,true,2),
(42,'DIBM','Digitale Business Modelle',3,true,false,true,false,2),
(43,'DITI','Digitale Transformation in der Industrie',3,true,false,true,false,2),
(44,'DICO','Digitales Controlling',3,true,false,false,true,2),
(45,'EBV','Echtzeit-Bildverarbeitung',3,true,false,false,true,2),
(46,'ENLAB','Enterprise Programming Lab',3,true,false,false,true,2),
(47,'GAME','Game Theory',3,true,false,true,true,2),
(48,'GIS','Geographic Information Systems',3,true,false,false,true,2),
(49,'GPRO','Gesch??ftsprozesse und Organisation',3,true,false,true,true,2),
(50,'HMAT','H??here Mathematik',3,true,false,false,true,2),
(51,'IPCV','Image Processing & Computer Vision',3,true,false,false,true,2),
(52,'IMLAB','Immersive Labs',3,true,false,true,true,2),
(53,'IMATH','Informatik Mathematik',3,true,false,true,false,2),
(54,'ITAU','IT Audit',3,true,false,true,false,2),
(55,'ISMA','IT Service Management',3,true,false,false,true,2),
(56,'ITRE','IT-Recht',3,true,false,false,true,2),
(57,'INFSEC+MAN','IT-Security Management',3,true,false,true,false,2),
(58,'KNRE','Knowledge Representation',3,true,false,true,true,2),
(59,'KOMA','Konfliktmanagement',3,true,false,false,true,2),
(60,'LIAL','Lineare Algebra',3,true,false,true,true,2),
(61,'MA+PHY1','Mathematik & Physik Technik 1',6,true,false,true,true,2),
(62,'MICRO','Microcontroller',3,true,false,false,true,2),
(63,'MOBPRO','Mobile Programming',3,true,false,false,true,2),
(64,'MOBSYS','Mobile Systems',3,true,false,false,true,2),
(65,'NETW1','Networking 1',3,true,false,true,true,2),
(66,'IOS','Programmieren f??rs iOS',3,true,false,true,false,2),
(67,'REUF','Recht f??r Unternehmensf??hrung',3,true,false,true,false,2),
(68,'MARI','Management und Recht im Informationszeitalter',3,true,false,false,true,2),
(69,'SIM+MOD','Management und Recht im Informationszeitalter',3,true,false,false,true,2),
(70,'SWT','Software Testing',3,true,false,false,true,2),
(71,'UKOM','Unternehmenskommunikation und Sprachtechnologien',3,true,false,false,true,2),
(72,'UGDM','Unternehmungsgr??ndungen in digitalen M??rkten',3,true,false,true,false,2),
(73,'VRT','Virtual Reality Technologies',3,true,false,false,true,2),
(74,'VWL','Volkswirtschaft',3,true,false,false,true,2),
(75,'WEBT','Web-Technologien',3,true,false,true,true,2),
(76,'XML','XML & JSON Technologies',3,false,true,true,false,2),
(77,'ADML','Advanced Machine Learning',6,true,false,false,true,2),
(78,'AISO','Artifical Intelligence: Search & Optimization',3,true,false,false,true,2),
(79,'BDLC','Big Data Lab Cluster',3,true,false,false,true,2),
(80,'BDLS','Big Data Lab Sandbox',3,false,true,true,false,2),
(81,'BCHAIN','Blockchain',3,true,false,true,true,2),
(82,'BIDS','Business Intelligence und Decision Support',3,false,true,true,true,2),
(83,'CI','Cloud Infrastructure',3,true,false,false,true,2),
(84,'CILAB','Cloud Infrastructure Lab',3,true,false,true,false,2),
(85,'CAB','Cloud-Services Angebot & Betrieb',3,true,false,false,true,2),
(86,'ROBLAB','Cognitive Robotics Lab',3,true,false,true,false,2),
(87,'DASB','Data Science Basics',3,true,false,true,true,2),
(88,'DAWA','Data Warehousing',3,true,false,true,true,2),
(89,'DAVI','Datenvisualisierung',3,true,false,true,false,2),
(90,'DL4G','Deep Learning for Games',3,true,false,true,false,2),
(91,'FOMED','Formen der Mediengestaltung',3,true,false,false,true,2),
(92,'GAMEDES','Game Design',3,true,false,false,true,2),
(93,'GAMEDEV','Game Development',3,true,false,true,false,2),
(94,'HFD','Human Factors & Design',3,true,false,true,false,2),
(95,'ISLAB','Information Security Lab',3,true,false,true,true,2),
(96,'ISM','Information Security Management',3,true,false,true,false,2),
(97,'ISOA','Information Security - Organisatorische Aspekte',3,true,false,false,true,2),
(98,'IAVR','Interaction for Virtual Reality',3,true,true,true,true,2),
(99,'IOT','Internet of Things',3,true,false,true,false,2),
(100,'KBDS','Knowledge-based Decision Support Systems',3,true,false,true,false,2),
(101,'KRYPTO','Kryptologie ICS',3,true,false,true,true,2),
(102,'ML','Machine Learning',3,true,false,true,true,2),
(103,'MANSEC','Managementaspekte der Informationssicherheit',3,true,false,false,true,2),
(104,'MOBLAB','Mobile Programming Lab',3,true,false,true,false,2),
(105,'PCP','Programming Concepts & Paradigms',6,true,false,false,true,2),
(106,'SPRG','Sicheres Programmieren',3,true,false,false,false,2),
(107,'SWAT','Software Architecture & Techniques',3,true,false,false,true,2),
(108,'USAB','Usability',3,true,false,true,true,2),
(109,'UCDE','User Centered Design - Engineering',3,true,false,false,true,2),
(110,'VID','Visual Interface Design',3,true,false,false,true,2),
(111,'WEBLAB','Web Programming Lab',3,false,true,true,false,2),
(112,'AEDCIT','Academic English IELTS Preparation',3,true,false,true,false,3),
(113,'AEDC1','Advanced English Diploma 1',3,true,false,true,false,3),
(114,'AEDCTO','Advanced English Diploma Course TOEFL Preparation',3,true,false,true,true,3),
(115,'ANGCPH','Anglo-American Culture, Politics and History',3,true,false,false,true,3),
(116,'CAEPRO','Cambridge Proficiency Preparation Course',3,true,false,false,true,3),
(117,'KUFA','Kunst der Finanzanlage',3,true,false,true,true,3),
(118,'ENGDBU','English for Digital Business',3,true,false,true,false,3),
(119,'ENGFTD','English for Future Technolgy Development',3,true,false,false,true,3),
(120,'ENGSDC','English for Strategic and Digital Communication',3,true,false,true,true,3),
(121,'ENGTCS','English for Technical & Computer Science',3,true,false,true,false,3),
(122,'ETHIK','Ethik',3,true,false,false,true,3),
(123,'ISFC','International School for Computer Science Students',3,false,true,true,true,3),
(124,'ASACPH','Introduction to Asia Culture Politics & History',3,true,false,true,false,3),
(125,'PROTCO','Professional and Technical Communication',3,true,false,false,true,3),
(126,'SOZIAL','Social Project',3,true,false,true,true,3),
(127,'SUM_SCHOOL','Summer School on Designing Serious Games',3,false,true,false,true,3),
(128,'CG','Computer Graphics',3,true,false,true,false,2),
(129,'3DMOD4RT','3D Modellieren f??r Echtzeitanwendungen',3,true,false,true,false,2),
(130,'PREN1','Produktentwicklung 1',6,true,false,true,true,4),
(131,'PREN2','Produktentwicklung 2',6,true,false,true,true,4);

INSERT INTO module_language (module_id, language_iso_code) VALUES
(1,'DE'),
(2,'DE'),
(3,'DE'),
(4,'DE'),
(5,'DE'),
(6,'DE'),
(7,'DE'),
(8,'DE'),
(9,'DE'),
(10,'DE'),
(11,'DE'),
(12,'DE'),
(13,'DE'),
(14,'DE'),
(15,'DE'),
(16,'DE'),
(17,'DE'),
(18,'DE'),
(19,'DE'),
(20,'DE'),
(21,'DE'),
(22,'DE'),
(23,'EN'),
(24,'DE'),
(25,'DE'),
(26,'DE'),
(27,'DE'),
(28,'DE'),
(29,'DE'),
(30,'DE'),
(31,'DE'),
(32,'DE'),
(33,'DE'),
(34,'EN'),
(35,'EN'),
(36,'EN'),
(37,'DE'),
(38,'DE'),
(39,'DE'),
(40,'DE'),
(41,'DE'),
(42,'DE'),
(43,'DE'),
(43,'EN'),
(44,'DE'),
(45,'DE'),
(46,'DE'),
(47,'EN'),
(48,'DE'),
(49,'DE'),
(50,'DE'),
(51,'DE'),
(52,'EN'),
(53,'DE'),
(54,'DE'),
(55,'DE'),
(56,'DE'),
(57,'EN'),
(58,'EN'),
(59,'DE'),
(60,'DE'),
(61,'DE'),
(61,'EN'),
(62,'DE'),
(63,'DE'),
(64,'DE'),
(65,'DE'),
(66,'DE'),
(67,'DE'),
(68,'DE'),
(69,'DE'),
(70,'DE'),
(71,'DE'),
(72,'DE'),
(73,'DE'),
(74,'DE'),
(75,'DE'),
(76,'DE'),
(77,'DE'),
(77,'EN'),
(78,'DE'),
(79,'DE'),
(80,'DE'),
(81,'DE'),
(82,'DE'),
(83,'DE'),
(84,'DE'),
(85,'DE'),
(86,'DE'),
(87,'EN'),
(88,'DE'),
(89,'DE'),
(90,'DE'),
(91,'DE'),
(92,'DE'),
(92,'EN'),
(93,'EN'),
(93,'DE'),
(94,'DE'),
(95,'DE'),
(96,'DE'),
(97,'DE'),
(98,'DE'),
(99,'EN'),
(100,'DE'),
(101,'DE'),
(102,'DE'),
(102,'EN'),
(103,'DE'),
(104,'DE'),
(105,'DE'),
(106,'DE'),
(106,'EN'),
(107,'DE'),
(108,'DE'),
(108,'EN'),
(109,'DE'),
(110,'DE'),
(111,'DE'),
(112,'EN'),
(113,'EN'),
(114,'EN'),
(115,'EN'),
(116,'EN'),
(117,'DE'),
(118,'EN'),
(119,'EN'),
(120,'EN'),
(121,'EN'),
(122,'DE'),
(123,'EN'),
(124,'EN'),
(125,'EN'),
(126,'DE'),
(127,'EN'),
(128,'EN'),
(129,'DE'),
(130,'DE'),
(131,'DE');

INSERT INTO requirement (id, inclusive, level_name) VALUES
(1,	true,'Assessment');

INSERT INTO requirement (id, inclusive) VALUES
(2,	false), /*oop|plab*/
(3,	true),/*anlis,dmath*/
(4,	true),/*cyber*/
(5,	true),/*iot*/
(6,	true),/*webt*/
(7,	true),/*vsk,dbs*/
(8,	true),/*pren1*/
(9,	false),/* LINAL|IMATH*/
(10,true),/* PTA,FKOM*/
(11,true),/* ITEO*/
(12,true),/* AD*/
(13,true),/* vsk*/
(14,true),/* dbs*/
(15,false),/* dbs|dmg*/
(16,false),/* vsk|SWDE*/
(17,true),/* IMATH*/
(18,true),/* ISF*/
(19,true),/* CAN*/
(20,true),/* ANLIS,ASTAT*/
(21,true),/* DMATH,ISF*/
(22,true),/* ITRE*/
(23,true),/* ANLIS*/
(24,true),/* MBPRO*/
(25,true),/* PTA*/
(26,true),/* PMB*/
(27,true),/* APPE*/
(28,true),/* USAB*/
(29,true);/* CNF*/

INSERT INTO requirement_module (requirement_id, module_id) VALUES
(1,1),
(1,2),
(1,5),
(1,7),
(1,8),
(1,9),
(1,10),
(1,18),
(1,19),
(1,20),
(2,11),
(2,12),
(3,2),
(3,7),
(4,39),
(5,99),
(6,75),
(7,15),
(7,6),
(8,130),
(9,60),
(9,53),
(10,18),
(10,20),
(11,9),
(12,1),
(13,15),
(14,6),
(15,6),
(16,15),
(16,14),
(17,53),
(18,8),
(19,5),
(20,2),
(20,3),
(21,7),
(21,8),
(22,56),
(23,2),
(24,63),
(25,20),
(26,19),
(27,4),
(28,108),
(29,34);


INSERT INTO module_requirement (module_id, requirement_id) VALUES
(1,	2),
(131,8),
(77,3),
(77,1),
(25,1),
(25,4),
(23,5),
(23,1),
(78,1),
(24,1),
(4,7),
(26,8),
(26,9),
(3,1),
(81,1),
(81,2),
(79,1),
(80,1),
(29,10),
(82,1),
(85,1),
(85,11),
(83,1),
(83,11),
(84,1),
(84,11),
(89,14),
(33,12),
(37,1),
(32,1),
(32,13),
(30,2),
(39,1),
(87,14),
(87,1),
(88,1),
(6,1),
(42,1),
(44,1),
(90,1),
(90,2),
(45,1),
(46,14),
(46,16),
(91,1),
(47,1),
(92,1),
(93,1),
(48,14),
(49,1),
(94,1),
(50,17),
(98,1),
(38,18),
(53,3),
(52,1),
(66,2),
(99,1),
(51,1),
(95,1),
(96,18),
(97,18),
(9,19),
(100,1),
(58,20),
(59,1),
(101,21),
(61,17),
(103,1),
(103,18),
(68,22),
(27,23),
(62,1),
(62,2),
(102,3),
(102,1),
(104,1),
(104,24),
(63,12),
(105,16),
(19,25),
(13,26),
(86,1),
(86,2),
(69,1),
(106,1),
(107,27),
(14,2),
(70,2),
(109,28),
(108,1),
(110,1),
(73,1),
(15,1),
(15,2),
(111,1),
(35,29),
(128,1),
(76,2);

INSERT INTO major_program (id, code, name, degree_program_id) VALUES
(1,	'AI & VC','Artificial Intelligence & Visual Computing','IBA'),
(2,	'DE & DS','Data Engineering & Data Science','IBA'),
(3,	'HCID','Human Computer Interaction Design','IBA'),
(4,	'IT OS','IT Operation & Security','IBA'),
(5,	'SWD M','Software Development ??? Mobile','IBA'),
(6,	'SWD W','Software Development ??? Web','IBA');

INSERT INTO requirement (id, inclusive, major_program_id) VALUES
(30,true,1),/*AI*/
(31,false,1),/*AI*/
(32,true,2),/*Data*/
(33,false,2),/*Data*/
(34,true,3),/*Intercation*/
(35,true,4),/*ITOS*/
(36,true,5),/*SWDM*/
(37,true,6);/*SWDW*/

INSERT INTO requirement_module (requirement_id, module_id) VALUES
(30,78),
(30,86),
(30,90),
(30,51),
(30,100),
(30,128),
(31,77),
(31,102),
(32,79),
(32,80),
(32,87),
(32,88),
(32,89),
(33,77),
(33,102),
(34,91),
(34,92),
(34,93),
(34,94),
(34,108),
(34,109),
(34,110),
(35,83),
(35,84),
(35,85),
(35,96),
(35,99),
(35,101),
(35,106),
(36,4),
(36,104),
(36,105),
(36,106),
(36,107),
(36,108),
(37,4),
(37,111),
(37,105),
(37,106),
(3,107),
(37,108);

INSERT INTO block (id, day, number) VALUES
(11,1,1),
(12,1,2),
(13,1,3),
(14,1,4),
(21,2,1),
(22,2,2),
(23,2,3),
(24,2,4),
(31,3,1),
(32,3,2),
(33,3,3),
(34,3,4),
(41,4,1),
(42,4,2),
(43,4,3),
(44,4,4),
(51,5,1),
(52,5,2),
(53,5,3),
(54,5,4),
(61,6,1),
(62,6,2);

/**********************************
            SEMESTER HS21
***********************************/
INSERT INTO semester (code) VALUES
('HS21');
/* MODULE ITEO () */
INSERT INTO execution (id, module_id, semester_code) VALUES
(1,9,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES 
(1,11),(1, 12);

/* MODULE SWDE (14) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(2,14,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(2,11),(2, 22);

/* MODULE OOP (11) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(3,11,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(3,12),(3, 23);

/* MODULE OOP (11) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(4,11,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(4,12),(4, 43);

/* MODULE PLAB (12) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(5,12,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(5,12);

/* MODULE AD (1) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(6,1,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(6,13),(6, 21);

/* MODULE ASTAT (3) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(7,3,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(7,13);

/* MODULE ANLIS (2) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(8,2,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(8,14),(8, 21);

/* MODULE MOD (10) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(9,10,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(9,14);

/* MODULE DMATH (7) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(10,7,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(10,21),(10, 22);

/* MODULE ANLIS (2) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(11,2,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(11,23),(11, 33);

/* MODULE MOD (10) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(12,10,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(12,23);

/* MODULE ISF (8) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(13,8,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(13,24);

/* MODULE PMRE (13) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(14,13,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(14,31);

/* MODULE DMATH (7) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(15,7,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(15,42),(15, 23);

/* MODULE CNA (5) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(16,5,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(16,42),(16, 53);

/* MODULE VSK (15) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(17,15,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(17,42),(17, 52);

/* MODULE ASTAT (3) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(18,3,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(18,43);

/* MODULE DBS (6) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(19,6,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(19,44),(19, 53);

/* MODULE PMRE (13) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(20,13,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(20,44);

/* MODULE ISF (8) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(21,8,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(21,52);

/* MODULE ASTAT (3) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(22,3,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(22,53);

/* MODULE PMRE (13) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(23,13,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(23,53);

/* MODULE WEBT (75) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(25,75,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(25,11);

/* MODULE LIAL (60) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(26,60,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(26,12);

/* MODULE WEBT (75) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(27,75,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(27,12);

/* MODULE KNRE (58) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(28,58,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(28,12);

/* MODULE COBAU (33) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(29,33,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(29,13);

/* MODULE NETW1 (65) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(30,65,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(30,14);

/* MODULE IOS (66) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(31,66,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(31,14);

/* MODULE ACBA (21) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(32,21,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(32,21);

/* MODULE CSA (30) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(33,30,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(33,22);

/* MODULE REUF (67) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(34,67,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(34,22);

/* MODULE GAME (47) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(35,47,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(35,23);

/* MODULE REUF (67) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(36,67,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(36,23);

/* MODULE WEBT (75) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(39,75,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(39,31);

/* MODULE CYBER (39) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(40,39,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(40,41);

/* MODULE CHMA (31) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(41,31,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(41,42);

/* MODULE WEBT (75) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(42,75,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(42,42);

/* MODULE WEBT (75) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(43,75,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(43,43);

/* MODULE CYBER (39) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(44,39,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(44,44);

/* MODULE DSO (40) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(45,40,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(45,44);

/* MODULE UGDM (72) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(46,72,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(46,44);

/* MODULE BCHAIN (81) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(48,81,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(48,52);

/* MODULE BDM (29) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(49,29,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(49,53);

/* MODULE AROB (26) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(52,26,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(52,12),(52, 13);

/* MODULE MA+PHY1 (61) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(53,61,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(53,13),(53, 14);

/* MODULE AROB (26) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(55,26,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(55,21),(55, 22);

/* MODULE USAB (108) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(56,108,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(56,23);

/* MODULE MA+PHY1 (61) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(57,61,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(57,23),(57, 24);

/* MODULE USAB (108) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(58,108,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(58,24);

/* MODULE AEMBS (22) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(59,22,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(59,43);

/* MODULE AEMBS (22) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(60,22,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(60,44);

/* MODULE FKOM (18) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(61,18,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(61,12);

/* MODULE FKOM (18) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(62,18,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(62,13);

/* MODULE PTA (20) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(63,20,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(63,13);

/* MODULE FKOM (18) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(64,18,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(64,21);

/* MODULE PMB (19) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(65,19,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(65,22);

/* MODULE PMB (19) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(66,19,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(66,23);

/* MODULE PTA (20) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(67,20,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(67,24);

/* MODULE PMB (19) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(68,19,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(68,32);

/* MODULE FKOM (18) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(69,18,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(69,33);

/* MODULE PREN1 () */
INSERT INTO execution (id, module_id, semester_code) VALUES
(70,130,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(70,41),(70, 51);

/* MODULE ENGDBU (118) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(71,118,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(71,23);

/* MODULE KUFA (117) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(72,117,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(72,24);

/* MODULE ENGTCS (121) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(73,121,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(73,32);

/* MODULE KUFA (117) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(74,117,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(74,32);

/* MODULE ASACPH (124) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(75,124,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(75,42);

/* MODULE AEDCIT (112) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(76,112,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(76,43);

/* MODULE ENGFTD (119) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(77,119,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(77,51);

/* MODULE ENGTCS (121) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(78,121,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(78,52);

/* MODULE ENGDBU (118) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(79,118,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(79,53);

/* MODULE ROBLAB (86) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(80,86,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(80,41);

/* MODULE CG (128) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(81,128,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(81,42),(81, 51);

/* MODULE ADML (77) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(83,77,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(83,52),(83, 53);

/* MODULE ML (102) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(84,102,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(84,52);

/* MODULE DL4G (90) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(85,90,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(85,54);

/* MODULE IAVR (98) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(87,98,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(87,51);

/* MODULE GAMEDEV (93) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(88,93,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(88,52);

/* MODULE HFD (94) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(89,94,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(89,53);

/* MODULE DAWA (88) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(90,88,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(90,42);

/* MODULE DAVI (89) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(91,89,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(91,51);

/* MODULE DASB (87) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(92,87,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(92,54);

/* MODULE ISM (96) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(93,96,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(93,41);

/* MODULE KRYPTO (101) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(94,101,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(94,42);

/* MODULE IOT (99) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(96,99,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(96,51);

/* MODULE ISLAB (95) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(97,95,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(97,52);

/* MODULE IOT (99) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(98,99,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(98,53);

/* MODULE MOBLAB (104) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(99,104,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(99,41);

/* MODULE SWT (70) */
INSERT INTO execution (id, module_id, semester_code) VALUES
(100,70,'HS21');
INSERT INTO execution_block(execution_id, block_id) VALUES
(100,43);