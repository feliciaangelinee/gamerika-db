

USE GameRika
--FOR NEW CUSTOMER

INSERT INTO Users (userId, userNickname, userFullname, userEmail, userCountry, userDescription)
VALUES ('USR001','Anthony','Anthony Gunawan','anthony_g@gmail.com','Malaysia','Male 26 y.o.')
-- START WITH USR and 3 number for the ID
-- userNickname must be more than 5 characters
-- userEmail must have ‘@’ character (without quote)
-- Users must insert userNickname, userFullname, userEmail, userCountry, and userDescription

INSERT INTO SalesTransaction (saleId, userId, gameId, transactionDate, gameQuantity)
VALUES ('USR001','SAL001','GAM005',DATEADD(DAYOFYEAR,0,'2008-01-31'),'2')
-- START WITH SAL and 3 numbe for the ID
-- SalesTransaction must insert transactionDate, gameId, and gameQuantity

INSERT INTO Games(gameId,developerId,publisherId,gameTitle,gameDescrip,releaseDate,gamePrice)
VALUES ('GAM001','DEV001','PUB001','Tekken 7','Fighting Multiplayer and Singleplayer Game',DateADD(DAYOFYEAR,0,'1998-05-21'),'500000')
-- START WITH GAM and 3 number for the ID
-- gameDescrip must be more than 20 Characters
-- releaseDate year must be greater than 1997
-- Games must insert developerId, publisherId, gameTitle, gameDescrip, releaseDate, gamePrice

INSERT INTO Developers(developerId, developerName, developerEmail, developerCountry, developerAddress, developerPhone)
VALUES ('DEV001','Martin Dikdo','martin_d@gmail.com','South Africa','jalan iman bonjol no.3','0812374836')
--START WITH DEV and 3 number of ID
--Developer email must have ‘@’ character (without quote)
--Developer phone must be numeric
--Developers must insert developersName, developersEmail, developersCountry, developersAddress, developersPhone

INSERT INTO Publishers(publisherId,publisherName,publisherEmail,publisherCountry,publisherAddress,publisherPhone)
VALUES ('PUB001','Steam','steam@gmail.com','Singapore','jalan orchard road no.3','0812132131')
--START WITH PUB and 3 number of ID
--Publisher email must have ‘@’ character (without quote)
--Publisher phone must be numeric
--Publishers must insert PublishersName, PublishersEmail, PublishersCountry, PublishersAddress, PublishersPhone


INSERT INTO Genres(genreId,genreName)
VALUES ('GEN001','Action')
--START WITH GEN and 3 number for the ID
--Genre must insert genreName

INSERT INTO GameGenres
VALUES('GAM001','GEN001')
--insert the new genre into this table

--Pertama - tama,user ingin membeli game jika user belom menjadi member di GameRika maka user harus mendaftarkan diri dengan menginput
--userId, userNickname, userFullname, userEmail, userCountry, dan userDescription. Jika identitas user sudah terdaftar
--user tidak perlu mendaftarkan diri lg. Lalu User memilih yang akan dibeli dan barang yang dibeli masuk ke dalam sales transaction

--jika terdapat game baru, maka data game akan diinput ke dalam games dan genre game tersebut diinput kedalam genre

--1 Daftar member GameRika dengan nama Anthony Gunawan dengan alamat email anthony_g@gmail.com berasal dari Malaysia lalu menginput userDescription berisi genre laki laki berumur 26 tahun
INSERT INTO Users (userId, userNickname, userFullname, userEmail, userCountry, userDescription)
VALUES ('USR001','Anthony','Anthony Gunawan','anthony_g@gmail.com','Malaysia','Male 26 y.o.')

--2 Memasukan Daftar Game lengkap dengan gameId, developerId,publisherId,gameTitle,gameDescrip,releaseDate,gamePrice
INSERT INTO Games(gameId,developerId,publisherId,gameTitle,gameDescrip,releaseDate,gamePrice)
VALUES ('GAM001','DEV001','PUB001','Tekken 7','Fighting Multiplayer and Singleplayer Game',DateADD(DAYOFYEAR,0,'1998-05-21'),'500000')

--3 menginput daftar transaksi dari user seperti gameId yang dibeli, Tanggal transaksi, dan jumlah kuantitas game
INSERT INTO SalesTransaction (saleId, userId, gameId, transactionDate, gameQuantity)
VALUES ('USR001','SAL001','GAM005',DATEADD(DAYOFYEAR,0,'2008-01-31'),'2')
