USE GameRika




SELECT * FROM Users
INSERT INTO Users (userId, userNickname, userFullname, userEmail, userCountry, userDescription)
VALUES ('USR001','Anthony','Anthony Gunawan','anthony_g@gmail.com','Malaysia','Male 26 y.o.'),
('USR002','Felicia','Felicia Angeline','felicia_a@gmail.com','Japan','Female 20 y.o.'),
('USR003','Graciela','Graciela Gabrielle Angeline','graciela_g@gmail.com','Australia','Female 21 y.o.'),
('USR004','Jansen','Jansen Guisaga','jansen_g@gmail.com','Indonesia','Male 28 y.o.'),
('USR005','Nicholas','Nicholas Evan Prawiro','nicholasevannep@gmail.com','South Korea','Male 24 y.o.'),
('USR006','Vincentia','Vincentia Graciella','vincentia_g@gmail.com','Singapore','Female 22 y.o.'),
('USR007','Theresia','Theresia Mursito','theresia_m@gmail.com','Indonesia','Female 21 y.o.'),
('USR008','Davide','Davide Setiawan','davide_s@gmail.com','Malaysia','Male 20 y.o.'),
('USR009','Felixe','Felixe Kusnandar','felixe_k@gmail.com','Singapore','Male 28 y.o.'),
('USR010','Hubert','Hubert Matthew','hubert_m@gmail.com','Singapore','Male 25 y.o.'),
('USR011','KubikKu','Kubik Kube','Kubeda@gmail.com','Australia','Male 33 y.o.')


SELECT * FROM Developers
INSERT INTO Developers(developerId, developerName, developerEmail, developerCountry, developerAddress, developerPhone)
VALUES ('DEV001','Martin Dikdo','martin_d@gmail.com','South Africa','jalan iman bonjol no.3','0812374836'),
('DEV002','Javin Djapri','javin_d@gmail.com','Argentina','jalan belalang no.33','0815263337'),
('DEV003','Marcellinus Barlian','marcellinus_b@gmail.com','India','jalan maple no.627','0812187162'),
('DEV004','Ciara Setio','ciara_s@gmail.com','Indonesia','jalan pakualam no.11','0812089222'),
('DEV005','Cynthia Vania','cynthia_v@gmail.com','South Korea','jalan kelapa sawit no.9','0816773833'),
('DEV006','Felicia Lukman','felicia_l@gmail.com','Indonesia','jalan kalimantan no.1','0812333333'),
('DEV007','Ian Joseph','ian_j@gmail.com','Shanghai','jalan kartini no.77','0818112124'),
('DEV008','Cinta Laura','cinta_l@gmail.com','Singapore','jalan pattimura no.43','0812987444'),
('DEV009','Deddy Cobuzer','deddy_c@gmail.com','Indonesia','jalan sudirman no.88','0815123733'),
('DEV010','Maudy Ayunda','maudy_a@gmail.com','Argentina','jalan mangga no.123','0800822222')


SELECT*FROM Publishers
INSERT INTO Publishers(publisherId,publisherName,publisherEmail,publisherCountry,publisherAddress,publisherPhone)
VALUES 
('PUB001','Steam','steam@gmail.com','Singapore','jalan orchard road no.3','0812132131'),
('PUB002','Umbisoft','umbi@gmail.com','Indonesia','jalan pekapuran no.4','0813557206'),
('PUB003','Origin','ori@gmail.com','Malaysia','jalan ujung tanduk no.22','0816262617'),
('PUB004','Stress','str@gmail.com','Indonesia','jalan sutra 4 no.31','0813556677'),
('PUB005','RDJ','rdjgames@gmail.com','United States','jalan 22 malibu front drive no.4','0812313131'),
('PUB006','Kojima','kojim@gmail.com','Indonesia','jalan K.H.Moh Mansyur 222A','0812242131'),
('PUB007','Akap','kakap@gmail.com','Japan','jalan toki gowl no.24','0815136677'),
('PUB008','Knive','kniveout@gmail.com','South Africa','jalan find a way back for you no.5','0815162131'),
('PUB009','Rain','rainraingoaway@gmail.com','South Korea','jalan lingkar luar barat no.10','0856780954'),
('PUB010','Rockstar','rockme@gmail.com','Australia','jalan lingkar luar timur no.14','0810293847')

SELECT * FROM Genres
INSERT INTO Genres(genreId,genreName)
VALUES ('GEN001','Action'),
('GEN002','Thriller'),
('GEN003','Horror'),
('GEN004','Adventure'),
('GEN005','Sci-Fi'),
('GEN006','Co-Op'),
('GEN007','Fantasy'),
('GEN008','Military'),
('GEN009','Sports'),
('GEN010','Mystery'),
('GEN011','Puzzle')


SELECT * FROM Games
INSERT INTO Games(gameId,developerId,publisherId,gameTitle,gameDescrip,releaseDate,gamePrice)
VALUES 
('GAM001','DEV001','PUB001','Tekken 7','Fighting Multiplayer and Singleplayer Game',DateADD(DAYOFYEAR,0,'1998-05-21'),'500000'),
('GAM002','DEV002','PUB002','Monster Hunter:World','Hunt Monsters in Open Massive Multiplayer World',DateADD(DAYOFYEAR,0,'1998-11-14'),'650000'),
('GAM003','DEV003','PUB003','Dark Souls III','Surviving horrorr multiplayer Game',DateADD(DAYOFYEAR,0,'2000-06-26'),'350000'),
('GAM004','DEV004','PUB004','BlackSquad','Multiplayer First Person Shooter',DateADD(DAYOFYEAR,0,'2002-01-12'),'100000'),
('GAM005','DEV005','PUB005','Tetris Block','Block Stacking is Very Fun',DateADD(DAYOFYEAR,0,'2000-04-11'),'50000'),
('GAM006','DEV006','PUB006','Counter Strike Global-Offensive','Multiplayer Competitive First Person Shooter',DateADD(DAYOFYEAR,0,'1998-04-21'),'210000'),
('GAM007','DEV007','PUB007','Street Fighter V','2D Fighting Game very Addictive',DateADD(DAYOFYEAR,0,'2010-05-06'),'150000'),
('GAM008','DEV008','PUB008','Warframe','Action game very fun and cool',DateADD(DAYOFYEAR,0,'2000-04-20'),'65000'),
('GAM009','DEV009','PUB009','DOTA 2','Strategy roleplaying multiplayer game ',DateADD(DAYOFYEAR,0,'2004-03-02'),'30000'),
('GAM010','DEV010','PUB010','Minecraft','Adventure openworld sandbox game',DateADD(DAYOFYEAR,0,'1998-05-21'),'20000'),
('GAM011','DEV005','PUB005','Grand Theft Auto VI','Adventure open world crime game',DateADD(DAYOFYEAR,0,'2000-06-22'),'25000')

SELECT * FROM GameGenres
INSERT INTO GameGenres
VALUES
('GAM001','GEN001'),
('GAM002','GEN001'),
('GAM002','GEN004'),
('GAM002','GEN006'),
('GAM003','GEN001'),
('GAM003','GEN003'),
('GAM003','GEN004'),
('GAM003','GEN006'),
('GAM004','GEN001'),
('GAM004','GEN006'),
('GAM004','GEN008'),
('GAM005','GEN011'),
('GAM006','GEN001'),
('GAM006','GEN001'),
('GAM006','GEN006'),
('GAM006','GEN008'),
('GAM007','GEN001'),
('GAM008','GEN004'),
('GAM008','GEN005'),
('GAM008','GEN006'),
('GAM008','GEN007'),
('GAM008','GEN008'),
('GAM009','GEN005'),
('GAM009','GEN006'),
('GAM010','GEN001'),
('GAM010','GEN004'),
('GAM010','GEN006'),
('GAM010','GEN007'),
('GAM011','GEN001'),
('GAM011','GEN004'),
('GAM011','GEN011')




SELECT * FROM GameReview


INSERT INTO GameReview(userId,gameId,recommendation,reviewContent,reviewDate)
VALUES 
('USR001','GAM005','recommended','this is a very interesting and fun puzzle game',DATEADD(DAYOFYEAR,0,'2008-01-31')),
('USR001','GAM009','recommended','a really fun and exciting game',DATEADD(DAYOFYEAR,0,'2008-01-31')),
('USR002','GAM009','not recommended','wasting time very boring',DATEADD(DAYOFYEAR,0,'2008-02-06')),
('USR002','GAM010','recommended','very addicting good for children',DATEADD(DAYOFYEAR,0,'2008-02-06')),
('USR002','GAM004','not recommended','bad graphics and boring gameplay',DATEADD(DAYOFYEAR,0,'2008-06-24')),
('USR003','GAM008','not recommended','very repetitive and hard to play',DATEADD(DAYOFYEAR,0,'2008-07-28')),
('USR004','GAM005','recommended','addicting and simple for everyone to play',DATEADD(DAYOFYEAR,0,'2009-03-28')),
('USR005','GAM001','not recommended','hard to play and not rewarding enough',DATEADD(DAYOFYEAR,0,'2010-03-31')),
('USR005','GAM002','recommended','many place to explore and fun to play in multiplayer',DATEADD(DAYOFYEAR,0,'2010-03-31')),
('USR005','GAM009','recommended','good for communication and many hero combination',DATEADD(DAYOFYEAR,0,'2010-03-31')),
('USR006','GAM003','recommended','good graphic and great gameplay',DATEADD(DAYOFYEAR,0,'2010-10-10')),
('USR007','GAM002','not recommended','too hard to play and hard boss fight',DATEADD(DAYOFYEAR,0,'2011-11-15')),
('USR008','GAM008','recommended','fast gameplay many contents and constant update',DATEADD(DAYOFYEAR,0,'2014-09-19')),
('USR008','GAM001','recommended','very fun, exciting and good game mechanic ',DATEADD(DAYOFYEAR,0,'2014-09-19')),
('USR009','GAM004','not recommended','too laggy, boring and small playerbase',DATEADD(DAYOFYEAR,0,'2015-02-08')),
('USR009','GAM005','not recommended','too boring and simple, no multiplayer and not fun as it used to be',DATEADD(DAYOFYEAR,0,'2015-02-08')),
('USR010','GAM002','recommended','flexible gameplay nice graphic and vast open world',DATEADD(DAYOFYEAR,0,'2015-08-13')),
('USR010','GAM010','not recommended','boring gameplay, toxic player base, and too hard to play',DATEADD(DAYOFYEAR,0,'2015-08-13')),
('USR010','GAM011','recommended','Good gameplay vast openworld good for stress reliever',DATEADD(DAYOFYEAR,0,'2015-08-13'))

SELECT * FROM SalesTransaction

INSERT INTO SalesTransaction
VALUES  
('USR001','SAL001','GAM005',DATEADD(DAYOFYEAR,0,'2008-01-31'),'2'),
('USR001','SAL002','GAM009',DATEADD(DAYOFYEAR,0,'2008-01-31'),'1'),
('USR002','SAL003','GAM009',DATEADD(DAYOFYEAR,0,'2008-02-03'),'1'),
('USR002','SAL004','GAM010',DATEADD(DAYOFYEAR,0,'2008-02-04'),'3'),
('USR002','SAL005','GAM004',DATEADD(DAYOFYEAR,0,'2008-06-22'),'2'),
('USR003','SAL006','GAM008',DATEADD(DAYOFYEAR,0,'2008-07-21'),'1'),
('USR004','SAL007','GAM005',DATEADD(DAYOFYEAR,0,'2009-03-09'),'1'),
('USR005','SAL008','GAM001',DATEADD(DAYOFYEAR,0,'2010-01-07'),'1'),
('USR005','SAL009','GAM002',DATEADD(DAYOFYEAR,0,'2010-03-28'),'3'),
('USR005','SAL010','GAM009',DATEADD(DAYOFYEAR,0,'2010-03-28'),'4'),
('USR005','SAL011','GAM003',DATEADD(DAYOFYEAR,0,'2010-03-30'),'2'),
('USR006','SAL012','GAM003',DATEADD(DAYOFYEAR,0,'2010-09-09'),'2'),
('USR006','SAL013','GAM007',DATEADD(DAYOFYEAR,0,'2010-09-09'),'2'),
('USR007','SAL014','GAM002',DATEADD(DAYOFYEAR,0,'2011-04-10'),'1'),
('USR007','SAL015','GAM005',DATEADD(DAYOFYEAR,0,'2011-11-12'),'1'),
('USR008','SAL016','GAM010',DATEADD(DAYOFYEAR,0,'2012-10-11'),'1'),
('USR008','SAL017','GAM008',DATEADD(DAYOFYEAR,0,'2012-10-11'),'3'),
('USR008','SAL018','GAM009',DATEADD(DAYOFYEAR,0,'2012-11-29'),'3'),
('USR008','SAL019','GAM001',DATEADD(DAYOFYEAR,0,'2013-09-13'),'2'),
('USR009','SAL020','GAM003',DATEADD(DAYOFYEAR,0,'2014-05-19'),'1'),
('USR009','SAL021','GAM007',DATEADD(DAYOFYEAR,0,'2014-12-25'),'5'),
('USR009','SAL022','GAM004',DATEADD(DAYOFYEAR,0,'2015-02-02'),'5'),
('USR009','SAL023','GAM005',DATEADD(DAYOFYEAR,0,'2015-02-02'),'2'),
('USR010','SAL024','GAM004',DATEADD(DAYOFYEAR,0,'2015-03-31'),'5'),
('USR010','SAL025','GAM002',DATEADD(DAYOFYEAR,0,'2015-03-31'),'4'),
('USR010','SAL026','GAM010',DATEADD(DAYOFYEAR,0,'2015-08-08'),'4'),
('USR011','SAL027','GAM005',DATEADD(DAYOFYEAR,0,'2015-08-08'),'4'),
('USR009','SAL028','GAM011',DATEADD(DAYOFYEAR,0,'2015-05-03'),'6'),
('USR006','SAL029','GAM003',DATEADD(DAYOFYEAR,0,'2015-05-20'),'5'),
('USR003','SAL030','GAM007',DATEADD(DAYOFYEAR,0,'2015-05-25'),'5'),
('USR011','SAL031','GAM006',DATEADD(DAYOFYEAR,0,'2015-06-24'),'6')