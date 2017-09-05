CREATE DATABASE IF NOT EXISTS fietsacademy;
USE fietsacademy;

DROP TABLE IF EXISTS `campussen`;
CREATE TABLE `campussen` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `naam` varchar(45) NOT NULL,
  `straat` varchar(45) NOT NULL,
  `huisNr` varchar(45) NOT NULL,
  `postCode` varchar(45) NOT NULL,
  `gemeente` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

ALTER TABLE `campussen` DISABLE KEYS;
INSERT INTO `campussen` (`id`,`naam`,`straat`,`huisNr`,`postCode`,`gemeente`) VALUES 
 (1,'Andros','Somersstraat','22','2018','Antwerpen'),
 (2,'Delos','Oude Vest','17','9200','Dendermonde'),
 (3,'Gavdos','Europalaan','37','3600','Genk'),
 (4,'Hydra','Interleuvenlaan','2','3001','Heverlee'),
 (5,'Ikaria','Vlamingstraat','10','8560','Wevelgem'),
 (6,'Paros','Keizerslaan','11','1000','Brussel');
ALTER TABLE `campussen` ENABLE KEYS;

DROP TABLE IF EXISTS `campussentelefoonnrs`;
CREATE TABLE `campussentelefoonnrs` (
  `nummer` varchar(50) NOT NULL,
  `opmerking` varchar(50) DEFAULT NULL,
  `campusId` int(10) unsigned NOT NULL,
  `fax` bit(1) NOT NULL,
  KEY `fk_campussentelefoonnrs_campussen` (`campusId`),
  CONSTRAINT `fk_campussentelefoonnrs_campussen` FOREIGN KEY (`campusId`) REFERENCES `campussen` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `campussentelefoonnrs` DISABLE KEYS;
INSERT INTO `campussentelefoonnrs` (`nummer`,`opmerking`,`campusId`,`fax`) VALUES 
 ('02 506 04 01',NULL,6,0x00),
 ('02 506 04 30',NULL,6,0x01),
 ('0800 30 700','gratis',6,0x00),
 ('03 202 17 11',NULL,1,0x00),
 ('03 202 17 00',NULL,1,0x01),
 ('052 46 97 40',NULL,2,0x00),
 ('052 46 97 69',NULL,2,0x01),
 ('089 30 14 11',NULL,3,0x00),
 ('089 36 40 84',NULL,3,0x01),
 ('016 38 00 00',NULL,4,0x00),
 ('016 40 02 29',NULL,4,0x01),
 ('056 43 80 80',NULL,5,0x00),
 ('056 42 13 43',NULL,5,0x01);
ALTER TABLE `campussentelefoonnrs` ENABLE KEYS;

DROP TABLE IF EXISTS `docenten`;
CREATE TABLE `docenten` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `voornaam` varchar(30) NOT NULL,
  `familienaam` varchar(30) NOT NULL,
  `wedde` decimal(10,2) NOT NULL,
  `rijksRegisterNr` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rijksRegisterNr` (`rijksRegisterNr`)
) ENGINE=InnoDB AUTO_INCREMENT=315 DEFAULT CHARSET=latin1;

ALTER TABLE `docenten` DISABLE KEYS;
INSERT INTO `docenten` (`id`,`voornaam`,`familienaam`,`wedde`,`rijksRegisterNr`) VALUES 
 (1,'Willy','Abbeloos','1400.00',64031501527),
 (2,'Marianne','Vos','1800.00',68071901519),
 (3,'Joseph','Achten','1300.00',63021401826),
 (4,'Jeanine','Longo','1700.00',67061802016),
 (5,'Jan','Adriaensens','2100.00',71102202404),
 (6,'Grace','Verbeke','1600.00',66051702414),
 (7,'Frans','Aerenhouts','1300.00',63021402915),
 (8,'Brigitta','Roos','1700.00',67061802808),
 (9,'Jean','Aerts','1200.00',62011302719),
 (10,'Sanne','Verhart','1600.00',66051703206),
 (11,'Paul','Aerts','2000.00',70092103196),
 (12,'Stefan','Aerts','1500.00',65041603505),
 (13,'François','Alexander','1900.00',69082004386),
 (14,'Henri','Allard','1600.00',66051703996),
 (15,'Albert','Anciaux','1100.00',61121204389),
 (16,'Urbain','Anseeuw','1500.00',65041604592),
 (17,'Etienne','Antheunis','1900.00',69082005079),
 (18,'Jacques','Arlet','1400.00',64031504891),
 (19,'Wim','Arras','1800.00',68071904685),
 (20,'Roger','Baens','2200.00',72112305073),
 (21,'Dirk','Baert','1000.00',60111105183),
 (22,'Hubert','Baert','1400.00',64031505584),
 (23,'Jean-Pierre','Baert','1800.00',68071906269),
 (24,'Armand','Baeyens','1300.00',63021406180),
 (25,'Jan','Baeyens','1700.00',67061806073),
 (26,'Roger','Baguet','2100.00',71102206362),
 (27,'Serge','Baguet','1600.00',66051706570),
 (28,'Gérard','Balducq','1300.00',63021406972),
 (29,'Koen','Barbé','1700.00',67061806766),
 (30,'Georges','Barras','1200.00',62011307370),
 (31,'Auguste','Baumans','1600.00',66051707659),
 (32,'Arsène','Bauwens','2000.00',70092107750),
 (33,'Henri','Bauwens','1500.00',65041607859),
 (34,'Jules','Bayens','1900.00',69082007950),
 (35,'Albert','Beckaert','1600.00',66051708451),
 (36,'Marcel','Beckaert','1100.00',61121208646),
 (37,'Koen','Beeckman','1500.00',65041608651),
 (38,'Kamiel','Beeckman','1900.00',69082009039),
 (39,'Theophile','Beeckman','1400.00',64031509544),
 (40,'Benoni','Beheyt','1800.00',68071909239),
 (41,'Albert','Beirnaert','2200.00',72112309726),
 (42,'Jean','Belvaux','1000.00',60111109539),
 (43,'Adelin','Benoit','1400.00',64031509841),
 (44,'Auguste','Benoit','1800.00',68071910130),
 (45,'Jef','Berben','1300.00',63021409942),
 (46,'Jean-Pierre','Berckmans','1700.00',67061811221),
 (47,'Albert','Berton','2100.00',71102210619),
 (48,'Frans','Beths','1600.00',66051710629),
 (49,'René','Beyens','1300.00',63021410833),
 (50,'Herman','Beyssens','1700.00',67061811419),
 (51,'Albert','Billiet','1200.00',62011311528),
 (52,'Hector','Billiet','1600.00',66051711718),
 (53,'Marcel','Blavier','2000.00',70092111908),
 (54,'Roger','Blockx','1500.00',65041611918),
 (55,'Maurice','Blomme','1900.00',69082012306),
 (56,'Willy','Bocklandt','1600.00',66051712609),
 (57,'Emile','Bodart','1100.00',61121212507),
 (58,'Alfons','Boekaerts','1500.00',65041613106),
 (59,'Cesar','Bogaert','1900.00',69082013096),
 (60,'Jan','Bogaert','1400.00',64031513009),
 (61,'Jean','Bogaerts','1800.00',68071913494),
 (62,'Frans','Bonduel','2200.00',72112313684),
 (63,'Tom','Boonen','1000.00',60111113596),
 (64,'Jozef','Boons','1400.00',64031513801),
 (65,'Gabriel','Borra','1800.00',68071914286),
 (66,'Joseph','Bosmans','1300.00',63021414593),
 (67,'Walter','Boucquet','1700.00',67061814882),
 (68,'Marcel','Boumon','2100.00',71102214874),
 (69,'Ferdinand','Bracke','1600.00',66051715379),
 (70,'Adolphe','Braeckeveldt','1300.00',63021415979),
 (71,'Omer','Braekevelt','1700.00',67061815674),
 (72,'Frans','Brands','1200.00',62011315585),
 (73,'Jean','Brankart','1600.00',66051715874),
 (74,'Emile','Brichard','2000.00',70092116163),
 (75,'Georges','Brosteaux','1500.00',65041616668),
 (76,'Emile','Bruneau','1900.00',69082016462),
 (77,'Jean-Marie','Bruyère','1600.00',66051717161),
 (78,'Joseph','Bruyere','1100.00',61121216960),
 (79,'Dave','Bruylandts','1500.00',65041617262),
 (80,'Johan','Bruyneel','1900.00',69082017353),
 (81,'Lucien','Buysse','1400.00',64031517462),
 (82,'Christophe','Brandt','1800.00',68071918048),
 (83,'Norbert','Callens','2200.00',72112318040),
 (84,'Johan','Capiot','1000.00',60111117952),
 (85,'Pino','Cerami','1400.00',64031518056),
 (86,'Georges','Christiaens','1800.00',68071919038),
 (87,'Georges','Claes','1300.00',63021418652),
 (88,'Karel','Clerckx','1700.00',67061818842),
 (89,'Alex','Close','2100.00',71102218735),
 (90,'Yvan','Corbusier','1600.00',66051719339),
 (91,'Hilaire','Couvreur','1300.00',63021419741),
 (92,'Wilfried','Cretskens','1700.00',67061820129),
 (93,'Claude','Criquielion','1200.00',62011320337),
 (94,'Emile','Daems','1600.00',66051719834),
 (95,'Gustave','Danneels','2000.00',70092120519),
 (96,'Fred','De Bruyne','1500.00',65041620529),
 (97,'Arthur','Decabooter','1900.00',69082021016),
 (98,'Hans','De Clerq','1600.00',66051720824),
 (99,'Roger','Decock','1100.00',61121220920),
 (100,'Georges','Decraeye','1500.00',65041621519),
 (101,'Odiel','Defraeye','1900.00',69082021511),
 (102,'Albert','De Jonghe','1400.00',64031521917),
 (103,'Julien','Delbecque','1800.00',68071922107),
 (104,'Alfons','Deloor','2200.00',72112322097),
 (105,'Gustaaf','Deloor','1000.00',60111122308),
 (106,'Hubert','Deltour','1400.00',64031522511),
 (107,'Paul','Deman','1800.00',68071922305),
 (108,'Marc','Demeyer','1300.00',63021422711),
 (109,'Frans','De Mulder','1700.00',67061823295),
 (110,'Johan','De Muynck','2100.00',71102223485),
 (111,'Jef','Demuysere','1600.00',66051723495),
 (112,'Jules','Depoorter','1300.00',63021423897),
 (113,'Richard','Depoorter','1700.00',67061824285),
 (114,'Prosper','Depredomme','1200.00',62011324592),
 (115,'Willy','Derboven','1600.00',66051724386),
 (116,'Germain','Derijcke','2000.00',70092124774),
 (117,'Michel','Dernies','1500.00',65041624784),
 (118,'Charles','Deruyter','1900.00',69082025172),
 (119,'Maurice','Desimpelaere','1600.00',66051725772),
 (120,'Gilbert','Desmet','1100.00',61121225373),
 (121,'Georges','Desplenter','1500.00',65041625972),
 (122,'Léon','Despontin','1900.00',69082025766),
 (123,'Eric','De Vlaeminck','1400.00',64031526271),
 (124,'Roger','De Vlaeminck','1800.00',68071926560),
 (125,'Stijn','Devolder','2200.00',72112326354),
 (126,'Maurice','Dewaele','1000.00',60111126662),
 (127,'Alfons','De Wolf','1400.00',64031526766),
 (128,'Rudy','Dhaenens','1800.00',68071926857),
 (129,'Michel','D\'Hooghe','1300.00',63021427263),
 (130,'Ludo','Dierckxsens','1700.00',67061827552),
 (131,'Frans','Dictus','2100.00',71102227346),
 (132,'Lomme','Driessens','1600.00',66051727851),
 (133,'Gustave','Drioul','1300.00',63021427956),
 (134,'Marcel','Dupont','1700.00',67061828047),
 (135,'Niko','Eeckhout','1200.00',62011328255),
 (136,'Nico','Emonds','1600.00',66051728247),
 (137,'Peter','Farazijn','2000.00',70092128734),
 (138,'Herman','Frison','1500.00',65041628843),
 (139,'Henri','Garnier','1900.00',69082029033),
 (140,'Frans','Gielen','1600.00',66051729138),
 (141,'Romain','Gijssels','1100.00',61121229630),
 (142,'Walter','Godefroot','1500.00',65041629932),
 (143,'Dries','Govaerts','1900.00',69082029924),
 (144,'Sylvain','Grysolle','1400.00',64031530330),
 (145,'Roger','Gyselinck','1800.00',68071930421),
 (146,'Paul','Haghedooren','2200.00',72112330710),
 (147,'Alfred','Hamerlinck','1000.00',60111131018),
 (148,'Louis','Hardiquest','1400.00',64031531122),
 (149,'Emile','Hardy','1800.00',68071930817),
 (150,'Marcel','Hendrikx','1300.00',63021431421),
 (151,'Joseph','Hoevenaers','1700.00',67061831809),
 (152,'Kevin','Hulsmans','2100.00',71102231702),
 (153,'Raymond','Impanis','1600.00',66051732009),
 (154,'Paul','In\'t','1300.00',63021431619),
 (155,'Willy','In\'t','1700.00',67061831908),
 (156,'Marcel','Janssens','1200.00',62011332611),
 (157,'Benjamin','Javaux','1600.00',66051732801),
 (158,'Karel','Kaers','2000.00',70092132692),
 (159,'Francis','Kemplaire','1500.00',65041633494),
 (160,'Norbert','Kerckhove','1900.00',69082033684),
 (161,'Désiré','Keteleer','1600.00',66051733690),
 (162,'Marcel','Kint','1100.00',61121233489),
 (163,'Firmin','Lambot','1500.00',65041633890),
 (164,'Roger','Lambrecht','1900.00',69082034278),
 (165,'Eric','Leman','1400.00',64031533991),
 (166,'Camille','Leroy','1800.00',68071934478),
 (167,'Roland','Liboton','2200.00',72112334767),
 (168,'Jules','Lowie','1000.00',60111134679),
 (169,'André','Lurquin','1400.00',64031535080),
 (170,'Henri','\'Rik\'','1800.00',68071935072),
 (171,'Pierrot','Machiels','1300.00',63021435775),
 (172,'André','Maelbrancke','1700.00',67061836064),
 (173,'Freddy','Maertens','2100.00',71102236056),
 (174,'Romain','Maes','1600.00',66051735868),
 (175,'Sylvère','Maes','1300.00',63021436171),
 (176,'Joseph','Marchand','1700.00',67061836658),
 (177,'René','Martens','1200.00',62011336569),
 (178,'Jacques','Martin','1600.00',66051736957),
 (179,'Emile','père','2000.00',70092136751),
 (180,'Florent','Mathieu','1500.00',65041637454),
 (181,'Nico','Mattan','1900.00',69082037248),
 (182,'Filip','Meirhaeghe','1600.00',66051737947),
 (183,'Axel','Merckx','1100.00',61121237647),
 (184,'Eddy','Merckx','1500.00',65041637850),
 (185,'André','Messelis','1900.00',69082038337),
 (186,'Maurice','Meuleman','1400.00',64031538743),
 (187,'Eloi','Meulenberg','1800.00',68071938834),
 (188,'Frans','Mintjens','2200.00',72112338925),
 (189,'Yvo','Molenaers','1000.00',60111139035),
 (190,'Maurice','Mollin','1400.00',64031539337),
 (191,'Arthur','Mommerency','1800.00',68071939824),
 (192,'Jean-Pierre','Monséré','1300.00',63021440230),
 (193,'Willy','Monty','1700.00',67061839628),
 (194,'Sammie','Moreels','2100.00',71102240115),
 (195,'Alfred','Mottard','1600.00',66051740323),
 (196,'Ernest','Mottart','1300.00',63021440527),
 (197,'Louis','Mottiat','1700.00',67061840618),
 (198,'Johan','Museeuw','1200.00',62011340826),
 (199,'Wilfried','Nelissen','1600.00',66051741412),
 (200,'François','Neuville','2000.00',70092141602),
 (201,'André','Noyelle','1500.00',65041641414),
 (202,'Guy','Nulens','1900.00',69082041307),
 (203,'Nick','Nuyens','1600.00',66051741610),
 (204,'Sven','Nys','1100.00',61121241508),
 (205,'Stan','Ockers','1500.00',65041642008),
 (206,'Petrus','Oellibrandt','1900.00',69082042988),
 (207,'Valère','Ollivier','1400.00',64031542802),
 (208,'Eddy','Peelman','1800.00',68071942792),
 (209,'Edward','Peeters','2200.00',72112343180),
 (210,'Luc','Petitjean','1000.00',60111143290),
 (211,'Victor','\'Louis\'','1400.00',64031543592),
 (212,'Georges','Pintens','1800.00',68071943881),
 (213,'Théodore','Pirmez','1300.00',63021444089),
 (214,'Eddy','Planckaert','1700.00',67061844279),
 (215,'Jo','Planckaert','2100.00',71102244271),
 (216,'Walter','Planckaert','1600.00',66051744875),
 (217,'Willy','Planckaert','1300.00',63021444980),
 (218,'Michel','Pollentier','1700.00',67061845269),
 (219,'Léon','Poncelet','1200.00',62011345081),
 (220,'Louis','Proost','1600.00',66051745172),
 (221,'Robert','Protin','2000.00',70092145461),
 (222,'Albert','Ramon','1500.00',65041645570),
 (223,'Gaston','Rebry','1900.00',69082045760),
 (224,'Jens','Renders','1600.00',66051745964),
 (225,'Guido','Reybrouck','1100.00',61121246456),
 (226,'Marcel','Rijckaert','1500.00',65041646758),
 (227,'Albert','Ritserveldt','1900.00',69082047146),
 (228,'Bert','Roesems','1400.00',64031546760),
 (229,'Louis','Rolus','1800.00',68071946851),
 (230,'Georges','Ronsse','2200.00',72112347338),
 (231,'André','Rosseel','1000.00',60111147448),
 (232,'Félicien','Salmon','1400.00',64031547849),
 (233,'Léopold','Schaeken','1800.00',68071948138),
 (234,'Willy','Scheers','1300.00',63021448049),
 (235,'Alfons','Schepers','1700.00',67061848437),
 (236,'Joseph','Scherens','2100.00',71102248627),
 (237,'Jef','Scherens','1600.00',66051748538),
 (238,'Briek','Schotte','1300.00',63021448841),
 (239,'Frans','Schoubben','1700.00',67061849229),
 (240,'Léon','Scieur','1200.00',62011349041),
 (241,'Félix','Sellier','1600.00',66051749429),
 (242,'Edward','Sels','2000.00',70092149421),
 (243,'Albert','Sercu','1500.00',65041649728),
 (244,'Patrick','Sercu','1900.00',69082050017),
 (245,'Andy','de Smet','1600.00',66051750122),
 (246,'Joseph','Somers','1100.00',61121250416),
 (247,'Tom','Steels','1500.00',65041650322),
 (248,'Ernest','Sterckx','1900.00',69082050908),
 (249,'Lucien','Storme','1400.00',64031551017),
 (250,'Tom','Stubbe','1800.00',68071950910),
 (251,'Roger','Swerts','2200.00',72112351395),
 (252,'Arthur','Targez','1000.00',60111151606),
 (253,'Andrei','Tchmil','1400.00',64031551809),
 (254,'Emmanuel','Thoma','1800.00',68071952195),
 (255,'Philippe','Thys','1300.00',63021452207),
 (256,'Hector','Tiberghien','1700.00',67061852890),
 (257,'Léon','Tommies','2100.00',71102252585),
 (258,'Lode','Troonbeeckx','1600.00',66051753189),
 (259,'Greg','Van Avermaet','1300.00',63021453492),
 (260,'Armand','Van Bruaene','1700.00',67061853781),
 (261,'Georges','Vanconingsloo','1200.00',62011354286),
 (262,'Léon','Van Daele','1600.00',66051753783),
 (263,'Charles','Van Den Born','2000.00',70092154567),
 (264,'Frank','Vandenbroucke','1500.00',65041654676),
 (265,'Odiel','Vanden Meerschaut','1900.00',69082055262),
 (266,'Eric','Vanderaerden','1600.00',66051754872),
 (267,'Kurt','Van de Wouwer','1100.00',61121255166),
 (268,'Richard','Van Genechten','1500.00',65041655666),
 (269,'Martin','Van Geneugden','1900.00',69082055757),
 (270,'Cyrille','Van Hauwaert','1400.00',64031555965),
 (271,'Maurice','Van Herzele','1800.00',68071956056),
 (272,'Jules','Van Hevel','2200.00',72112355850),
 (273,'Edwig','Van Hooydonck','1000.00',60111156455),
 (274,'Lucien','Van Impe','1400.00',64031556262),
 (275,'Henri','Van Kerkhove','1800.00',68071956749),
 (276,'Rik','Van Linden','1300.00',63021456561),
 (277,'Rik','Van Looy','1700.00',67061856553),
 (278,'Willy','Vannitsen','2100.00',71102257040),
 (279,'Peter','Van Petegem','1600.00',66051757446),
 (280,'Peter','Van Santvliet','1300.00',63021457848),
 (281,'Victor','Van Schil','1700.00',67061857741),
 (282,'Herman','van Springel','1200.00',62011358246),
 (283,'Rik','Van Steenbergen','1600.00',66051758436),
 (284,'Guillaume','Van Tongerloo','2000.00',70092159022),
 (285,'Noël','Vantyghem','1500.00',65041658339),
 (286,'Rik','Verbrugghe','1900.00',69082058529),
 (287,'Auguste','Verdyck','1600.00',66051758832),
 (288,'Jozef','Verhaert','1100.00',61121258928),
 (289,'René','Vermandel','1500.00',65041659131),
 (290,'Stive','Vermaut','1900.00',69082059222),
 (291,'Adolf','Verschueren','1400.00',64031559826),
 (292,'Constant','Verschueren','1800.00',68071960313),
 (293,'Johan','Verstrepen','2200.00',72112360107),
 (294,'Félicien','Vervaecke','1000.00',60111160514),
 (295,'Julien','Vervaecke','1400.00',64031560519),
 (296,'Edward','Vissers','1800.00',68071960511),
 (297,'Lucien','Vlaemynck','1300.00',63021460917),
 (298,'André','Vlaeyen','1700.00',67061860810),
 (299,'Jean','Vliegen','2100.00',71102260901),
 (300,'Luc','Wallays','1600.00',66051761010),
 (301,'René','Walschot','1300.00',63021461412),
 (302,'Jean-Marie','Wampers','1700.00',67061862194),
 (303,'Robert','Wancour','1200.00',62011361909),
 (304,'Bart','Wellens','1600.00',66051761901),
 (305,'Wilfried','Wesemael','2000.00',70092162683),
 (306,'Wouter','Weylandt','1500.00',65041662693),
 (307,'Marc','Wauters','1900.00',69082062586),
 (308,'Daniel','Willems','1600.00',66051762988),
 (309,'Joseph','Abelshausen','1800.00',68071963578),
 (310,'François','Adam','1700.00',67061863283),
 (311,'René','Adriaensens','1600.00',66051763780),
 (312,'Emile','Aerts','1700.00',67061863481),
 (313,'Mario','Aerts','1600.00',66051763681),
 (314,'Jozef','Wouters','1100.00',61121264074);
ALTER TABLE `docenten` ENABLE KEYS;

DROP TABLE IF EXISTS `docentenbijnamen`;
CREATE TABLE `docentenbijnamen` (
  `docentid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bijnaam` varchar(45) NOT NULL,
  UNIQUE KEY `docentenbijnamenDocentNrBijnaam` (`docentid`,`bijnaam`),
  CONSTRAINT `fk_docentenbijnamen_docenten` FOREIGN KEY (`docentid`) REFERENCES `docenten` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=latin1;

ALTER TABLE `docentenbijnamen` DISABLE KEYS;
INSERT INTO `docentenbijnamen` (`docentid`,`bijnaam`) VALUES 
 (63,'Bom van Baelen'),
 (63,'Tommeke'),
 (63,'Tornado Tom'),
 (124,'Le gitan'),
 (124,'Tsjéte'),
 (125,'Volderke'),
 (181,'Monsieur P'),
 (184,'De Beethoven van de ronde'),
 (184,'De beul van de fiets'),
 (184,'De kannibaal'),
 (184,'De zwarte van Tervuren'),
 (198,'De leeuw van Vlaanderen'),
 (205,'Le Rusé'),
 (259,'Avi'),
 (274,'De kleine van Meere'),
 (279,'De peet'),
 (279,'De zwarte van Brakel'),
 (304,'Bartmans'),
 (307,'De soldaat'),
 (313,'Le beau Mario'),
 (313,'Super Mario');
ALTER TABLE `docentenbijnamen` ENABLE KEYS;

DROP TABLE IF EXISTS `verantwoordelijkheden`;
CREATE TABLE `verantwoordelijkheden` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `naam` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `naam` (`naam`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

ALTER TABLE `verantwoordelijkheden` DISABLE KEYS;
INSERT INTO `verantwoordelijkheden` (`id`,`naam`) VALUES 
 (2,'Brandbestrijding'),
 (3,'Defectenbeheer'),
 (1,'EHBO'),
 (4,'Uitleen boeken');
ALTER TABLE `verantwoordelijkheden` ENABLE KEYS;


DROP TABLE IF EXISTS `docentenverantwoordelijkheden`;
CREATE TABLE `docentenverantwoordelijkheden` (
  `docentId` int(10) unsigned NOT NULL,
  `verantwoordelijkheidId` int(10) unsigned NOT NULL,
  PRIMARY KEY (`docentId`,`verantwoordelijkheidId`),
  KEY `fk_verant_docenten` (`verantwoordelijkheidId`),
  CONSTRAINT `fk_docenten_veran` FOREIGN KEY (`docentId`) REFERENCES `docenten` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_verant_docenten` FOREIGN KEY (`verantwoordelijkheidId`) REFERENCES `verantwoordelijkheden` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `docentenverantwoordelijkheden` DISABLE KEYS;
INSERT INTO `docentenverantwoordelijkheden` (`docentId`,`verantwoordelijkheidId`) VALUES 
 (3,1),
 (6,1),
 (9,1),
 (12,1),
 (15,1),
 (18,1),
 (21,1),
 (24,1),
 (27,1),
 (30,1),
 (33,1),
 (36,1),
 (39,1),
 (42,1),
 (45,1),
 (48,1),
 (51,1),
 (54,1),
 (57,1),
 (60,1),
 (63,1),
 (66,1),
 (69,1),
 (72,1),
 (75,1),
 (78,1),
 (81,1),
 (84,1),
 (87,1),
 (90,1),
 (93,1),
 (96,1),
 (99,1),
 (102,1),
 (105,1),
 (108,1),
 (111,1),
 (114,1),
 (117,1),
 (120,1),
 (123,1),
 (126,1),
 (129,1),
 (132,1),
 (135,1),
 (138,1),
 (141,1),
 (144,1),
 (147,1),
 (150,1),
 (153,1),
 (156,1),
 (159,1),
 (162,1),
 (165,1),
 (168,1),
 (171,1),
 (174,1),
 (177,1),
 (180,1),
 (183,1),
 (186,1),
 (189,1),
 (192,1),
 (195,1),
 (198,1),
 (201,1),
 (204,1),
 (207,1),
 (210,1),
 (213,1),
 (216,1),
 (219,1),
 (222,1),
 (225,1),
 (228,1),
 (231,1),
 (234,1),
 (237,1),
 (240,1),
 (243,1),
 (246,1),
 (249,1),
 (252,1),
 (255,1),
 (258,1),
 (261,1),
 (264,1),
 (267,1),
 (270,1),
 (273,1),
 (276,1),
 (279,1),
 (282,1),
 (285,1),
 (288,1),
 (291,1),
 (294,1),
 (297,1),
 (300,1),
 (303,1),
 (306,1),
 (309,1),
 (312,1),
 (1,2),
 (4,2),
 (7,2),
 (10,2),
 (13,2),
 (16,2),
 (19,2),
 (22,2),
 (25,2),
 (28,2),
 (31,2),
 (34,2),
 (37,2),
 (40,2),
 (43,2),
 (46,2),
 (49,2),
 (52,2),
 (55,2),
 (58,2),
 (61,2),
 (64,2),
 (67,2),
 (70,2),
 (73,2),
 (76,2),
 (79,2),
 (82,2),
 (85,2),
 (88,2),
 (91,2),
 (94,2),
 (97,2),
 (100,2),
 (103,2),
 (106,2),
 (109,2),
 (112,2),
 (115,2),
 (118,2),
 (121,2),
 (124,2),
 (127,2),
 (130,2),
 (133,2),
 (136,2),
 (139,2),
 (142,2),
 (145,2),
 (148,2),
 (151,2),
 (154,2),
 (157,2),
 (160,2),
 (163,2),
 (166,2),
 (169,2),
 (172,2),
 (175,2),
 (178,2),
 (181,2),
 (184,2),
 (187,2),
 (190,2),
 (193,2),
 (196,2),
 (199,2),
 (202,2),
 (205,2),
 (208,2),
 (211,2),
 (214,2),
 (217,2),
 (220,2),
 (223,2),
 (226,2),
 (229,2),
 (232,2),
 (235,2),
 (238,2),
 (241,2),
 (244,2),
 (247,2),
 (250,2),
 (253,2),
 (256,2),
 (259,2),
 (262,2),
 (265,2),
 (268,2),
 (271,2),
 (274,2),
 (277,2),
 (280,2),
 (283,2),
 (286,2),
 (289,2),
 (292,2),
 (295,2),
 (298,2),
 (301,2),
 (304,2),
 (307,2),
 (310,2),
 (313,2),
 (2,3),
 (5,3),
 (8,3),
 (11,3),
 (14,3),
 (17,3),
 (20,3),
 (23,3),
 (26,3),
 (29,3),
 (32,3),
 (35,3),
 (38,3),
 (41,3),
 (44,3),
 (47,3),
 (50,3),
 (53,3),
 (56,3),
 (59,3),
 (62,3),
 (65,3),
 (68,3),
 (71,3),
 (74,3),
 (77,3),
 (80,3),
 (83,3),
 (86,3),
 (89,3),
 (92,3),
 (95,3),
 (98,3),
 (101,3),
 (104,3),
 (107,3),
 (110,3),
 (113,3),
 (116,3),
 (119,3),
 (122,3),
 (125,3),
 (128,3),
 (131,3),
 (134,3),
 (137,3),
 (140,3),
 (143,3),
 (146,3),
 (149,3),
 (152,3),
 (155,3),
 (158,3),
 (161,3),
 (164,3),
 (167,3),
 (170,3),
 (173,3),
 (176,3),
 (179,3),
 (182,3),
 (185,3),
 (188,3),
 (191,3),
 (194,3),
 (197,3),
 (200,3),
 (203,3),
 (206,3),
 (209,3),
 (212,3),
 (215,3),
 (218,3),
 (221,3),
 (224,3),
 (227,3),
 (230,3),
 (233,3),
 (236,3),
 (239,3),
 (242,3),
 (245,3),
 (248,3),
 (251,3),
 (254,3),
 (257,3),
 (260,3),
 (263,3),
 (266,3),
 (269,3),
 (272,3),
 (275,3),
 (278,3),
 (281,3),
 (284,3),
 (287,3),
 (290,3),
 (293,3),
 (296,3),
 (299,3),
 (302,3),
 (305,3),
 (308,3),
 (311,3),
 (314,3),
 (1,4),
 (3,4),
 (5,4),
 (7,4),
 (9,4),
 (11,4),
 (13,4),
 (15,4),
 (17,4),
 (19,4),
 (21,4),
 (23,4),
 (25,4),
 (27,4),
 (29,4),
 (31,4),
 (33,4),
 (35,4),
 (37,4),
 (39,4),
 (41,4),
 (43,4),
 (45,4),
 (47,4),
 (49,4),
 (51,4),
 (53,4),
 (55,4),
 (57,4),
 (59,4),
 (61,4),
 (63,4),
 (65,4),
 (67,4),
 (69,4),
 (71,4),
 (73,4),
 (75,4),
 (77,4),
 (79,4),
 (81,4),
 (83,4),
 (85,4),
 (87,4),
 (89,4),
 (91,4),
 (93,4),
 (95,4),
 (97,4),
 (99,4),
 (101,4),
 (103,4),
 (105,4),
 (107,4),
 (109,4),
 (111,4),
 (113,4),
 (115,4),
 (117,4),
 (119,4),
 (121,4),
 (123,4),
 (125,4),
 (127,4),
 (129,4),
 (131,4),
 (133,4),
 (135,4),
 (137,4),
 (139,4),
 (141,4),
 (143,4),
 (145,4),
 (147,4),
 (149,4),
 (151,4),
 (153,4),
 (155,4),
 (157,4),
 (159,4),
 (161,4),
 (163,4),
 (165,4),
 (167,4),
 (169,4),
 (171,4),
 (173,4),
 (175,4),
 (177,4),
 (179,4),
 (181,4),
 (183,4),
 (185,4),
 (187,4),
 (189,4),
 (191,4),
 (193,4),
 (195,4),
 (197,4),
 (199,4),
 (201,4),
 (203,4),
 (205,4),
 (207,4),
 (209,4),
 (211,4),
 (213,4),
 (215,4),
 (217,4),
 (219,4),
 (221,4),
 (223,4),
 (225,4),
 (227,4),
 (229,4),
 (231,4),
 (233,4),
 (235,4),
 (237,4),
 (239,4),
 (241,4),
 (243,4),
 (245,4),
 (247,4),
 (249,4),
 (251,4),
 (253,4),
 (255,4),
 (257,4),
 (259,4),
 (261,4),
 (263,4),
 (265,4),
 (267,4),
 (269,4),
 (271,4),
 (273,4),
 (275,4),
 (277,4),
 (279,4),
 (281,4),
 (283,4),
 (285,4),
 (287,4),
 (289,4),
 (291,4),
 (293,4),
 (295,4),
 (297,4),
 (299,4),
 (301,4),
 (303,4),
 (305,4),
 (307,4),
 (309,4),
 (311,4),
 (313,4);
ALTER TABLE `docentenverantwoordelijkheden` ENABLE KEYS;

DROP TABLE IF EXISTS `managers`;
CREATE TABLE `managers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `voornaam` varchar(45) NOT NULL,
  `familienaam` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

ALTER TABLE `managers` DISABLE KEYS;
INSERT INTO `managers` (`id`,`voornaam`,`familienaam`) VALUES 
 (1,'Lomme','Driesens'),
 (2,'Florent','Van Vaerenbergh'),
 (3,'Walter','Dalgal'),
 (4,'Kees','Priem'),
 (5,'Guido','Van Calster'),
 (6,'Dirk','Wayenbergh');
ALTER TABLE `managers` ENABLE KEYS;

grant all on fietsacademy.* to 'cursist'@'localhost' identified by 'cursist';