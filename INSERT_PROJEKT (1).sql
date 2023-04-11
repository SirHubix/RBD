Insert INTO frakcja VALUES
(1,'Ludzie'),
(2,'Nocne Elfy'),
(3,'Nieumarli');

INSERT INTO druzyna VALUES
('czerwony',1,'GKS ORZEŁKI',6),
('niebieski',2,'Bake Rolls',3),
('żółty',3,'Fanatic',4),
('zielony',4,'Podludzie',4);

Insert INTO mecz VALUES 
(1,'Red wins','40min',6),
(2,'Wygrana żółci','30min',8),
(3,'Wygrana,Czerwoni','25min',6),
(4,'Wygrana zieloni','35min',8);

INSERT INTo "bierze_udział" VALUES 
(1,1),
(2,1),
(4,2),
(3,2),
(1,3),
(2,3),
(4,4),
(3,4);

INSERT INTO jednostka VALUES
(1,'Magiczny',23,224,'mag','lekki','Nekromanta',150,3),
(2,'Normalny',36,1175,'wojownik','ciężki','Abominacja',200,3),
(3,'Normalny',7,140,'budowiniczy',NULL,'Akolita',70,3),
(4,'Normalny',13,200,'wojownik','normalny','Ghoul',100,3),
(5,'Przebijający',48,350,'dystansowa','nomralny','Bies',120,3),
(6,'Normalny',52,700,'dystansowa','ciężki','Chimera',250,2),
(7,'Magiczny',33,420,'mag','lekki','Driada',200,2),
(8,'Magiczny',5,160,'budowiniczy',NULL,'Ognik',40,2),
(9,'Normalny',21,245,'dystansowa','normalny','Łucznik',100,2),
(10,'Oblężnicza',76,620,'oblężniczy','ciężki','Glewiopulta',150,2),
(11,'Normalny',8,176,'budowiniczy',NULL,'Chłop',60,1),
(12,'Przebijający',33,220,'dystansowa','normalny','Strzelec',150,1),
(13,'Magiczny',23,180,'mag','lekki','Czarodziejka',180,1),
(14,'Normalny',45,652,'wojownik','ciężki','Łamacz zaklęć',200,1),
(15,'Oblężnicza',100,350,'oblężniczy','nomralny','Moździerz',220,1);

INSERT INTo budynek VALUES
(1,'Ratusz','Produkcyjny',5000,400,1),
(2,'Nekropolia','Produkcyjny',5000,400,3),
(3,'Drzewo Życia','Produkcyjny',5000,400,2),
(4,'Farma','Zaopatrzenie',1400,150,1),
(5,'Księżycowa Studnia','Zaopatrzenie',1600,200,2),
(6,'Ziggurat','Zaopatrzenie',1850,210,3),
(7,'Kuźnia','Ulepszenia',1420,300,1),
(8,'Cmentarz','Ulepszenia',1450,420,3),
(9,'Loża Łowców','Ulepszenia',1700,340,2),
(10,'Barraki', 'Prodkcja Militarna',1720,250,1),
(11,'Drzewiec Wojny','Prodkcja Militarna',2000,320,2),
(12,'Krypta','Produkcja Millitana',1690,200,3);	


INSERT INTO bohater VALUES 
(1,1,'Żywiołak Ognia','Pyromancer','Kula Ognia',752,85,1),
(2,1,'Zapłon','Łowca Demonów','Czarna strzała',800,100,2),
(3,1,'Lodowy pancerz','Litch','Śmierć i rozkład',750,77,3),
(4,1,'Błyskawica ','Wieszcz','Awatar',777,42,2),
(5,1,'Inferno','Upiorny Władca','Wampiryczna Aura',1000,50,3),
(6,1,'Boska Tarcza','Paladyn','Konsekracja',1000,80,1);



INSERT Into gracz VALUES
('Fryns',1,'Silver',20,1),
('LaFlame',2,NULL,666,1),
('JJJerry420',3,'Diamond',777,2),
('JAPA_PL',4,'Silver',42,3),
('Tsunami98',5,'Bronze',120,3),
('DonPuffino',6,NULL,999,2),
('Gizmo987',7,'Iron',3,4),
('massowsky',8,NULL,342,3),
('Macias_PRO',9,NULL,321,4),
('slowichi',10,'Gold',414,4);


INSERT INTO kontroluje VALUES
(1,2),
(2,2),
(3,3),
(6,2),
(7,2),
(8,2),
(9,2),
(10,1);

