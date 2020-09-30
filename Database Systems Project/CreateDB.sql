CREATE DATABASE GameRika
USE GameRika

CREATE TABLE Users(
userId CHAR (6) Primary key NOT NULL,
userNickname VARCHAR (255) NOT NULL,
userFullname VARCHAR (255) NOT NULL,
userEmail VARCHAR (255) NOT NULL,
userCountry VARCHAR (255) NOT NULL,
userDescription VARCHAR (255) NOT NULL,
CONSTRAINT cekId CHECK (userId LIKE 'USR[0-9][0-9][0-9]'),
CONSTRAINT cekNickname CHECK (LEN(userNickname) > 5),
CONSTRAINT cekEmail CHECK (userEmail LIKE '%@%')
)

CREATE TABLE Developers(
developerId VARCHAR (6) Primary key NOT NULL,
developerName VARCHAR(255) NOT NULL,
developerEmail VARCHAR (255) NOT NULL,
developerCountry VARCHAR(255) NOT NULL,
developerAddress VARCHAR(255) NOT NULL,
developerPhone CHAR(10) NOT NULL,
CONSTRAINT checkId CHECK (DeveloperId LIKE 'DEV[0-9][0-9][0-9]'),
CONSTRAINT checkEmail CHECK (DeveloperEmail LIKE '%@%'),
CONSTRAINT checkPhone CHECK (DeveloperPhone LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
)


CREATE TABLE Publishers(
publisherId VARCHAR (6) Primary key NOT NULL,
publisherName VARCHAR(255) NOT NULL,
publisherEmail VARCHAR (255) NOT NULL,
publisherCountry VARCHAR(255) NOT NULL,
publisherAddress VARCHAR(255) NOT NULL,
publisherPhone CHAR(10) NOT NULL,
CONSTRAINT ckId CHECK (PublisherId LIKE 'PUB[0-9][0-9][0-9]'),
CONSTRAINT ckEmail CHECK (PublisherEmail LIKE '%@%'),
CONSTRAINT ckPhone CHECK (PublisherPhone LIKE '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
)

CREATE TABLE Games(
gameId VARCHAR (6) Primary key NOT NULL,
developerId VARCHAR (6) Foreign Key References Developers(developerId) NOT NULL,
publisherId VARCHAR (6) Foreign Key References Publishers(publisherId) NOT NULL,
gameTitle VARCHAR (255) NOT NULL,
gameDescrip VARCHAR (255) NOT NULL,
releaseDate Date NOT NULL,
gamePrice INT NOT NULL,
CONSTRAINT chekDes CHECK (LEN (gameDescrip)>20),
CONSTRAINT chekId CHECK (gameId LIKE 'GAM[0-9][0-9][0-9]'),
CONSTRAINT chekdate CHECK (releaseDate > '1997-12-31')
)


CREATE TABLE SalesTransaction(
userId CHAR (6) Foreign Key References Users(userId) NOT NULL,
saleId CHAR (6) Primary Key NOT NULL,
gameId VARCHAR (6) Foreign Key References Games(gameId),
transactionDate DATE NOT NULL,
gameQuantity INT NOT NULL,
CONSTRAINT cekSaleId CHECK (saleId LIKE 'SAL[0-9][0-9][0-9]')
)


CREATE TABLE Genres(
genreId VARCHAR (6) Primary key NOT NULL,
genreName VARCHAR (10) NOT NULL,
CONSTRAINT ceId CHECK (genreId LIKE 'GEN[0-9][0-9][0-9]')
)

CREATE TABLE GameGenres(
gameId VARCHAR (6) Foreign Key References Games(gameId),
genreId VARCHAR (6) Foreign Key References Genres(genreId)
)

CREATE TABLE GameReview(
userId CHAR (6) Foreign Key References Users(userId),
gameId VARCHAR (6) Foreign key References Games(gameId),
recommendation VARCHAR (20),
reviewContent VARCHAR (255),
reviewDate DATE,
CONSTRAINT checkrekomen CHECK (recommendation = 'recommended' OR recommendation = 'not recommended'),
CONSTRAINT cekreviews CHECK (LEN(reviewContent) > 20)
)