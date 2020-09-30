
USE GameRika
--1.	Display GameId, GameTitle, and Total Review (obtained from the total review of that game and 
--ended with ‘ review(s)’) for each game that is reviewed by as user who 
--lived in ’Singapore’ or ’Indonesia’ and published by a publisher which ID is ‘PUB002’.

--1
SELECT Games.gameTitle,Games.gameId,
CAST(COUNT(Gamereview.gameId) AS varchar(10))+' review(s)' AS Reviews 
FROM Games,GameReview,Users
WHERE games.gameId=GameReview.gameId and GameReview.userId=Users.userId and (Users.userCountry='Singapore' OR Users.userCountry='Indonesia')
Group BY Games.gameTitle,Games.gameId,publisherId
Having Games.publisherId='PUB002'


--2.	Display GenreId, GenreName, and Total Game (obtained from the count of game) for every game
--which is developed by a developer which ID is between ‘DEV003’ and ‘DEV009’ and the game is released in even month.


--2
SELECT Genres.genreId,
genreName,
COUNT(Genres.genreId) AS [Total Game]
FROM Genres,GameGenres,Games
WHERE Genres.genreId=GameGenres.genreId AND GameGenres.gameId=Games.gameId AND (DATENAME(DAY,Games.releaseDate))%2=0
AND (RIGHT(developerId,3)>=3 AND RIGHT(developerId,3)<=9)
 GROUP BY Genres.genreId,genreName

 --3
 --display DeveloperId, DeveloperName, Local Phone (obtained by replacing DeveloperPhone first character into ‘+62’),
 -- Games Sold (obtained from the sum of quantity), and Total Transaction (obtained from the count of transaction) 
 -- for every developer whose ID between ‘DEV004’ and ‘DEV008’ and the Games Sold is less than or equals to 5.
 
 --3
 SELECT Developers.developerId,developerName,
 '+62'+CAST(SUBSTRING(developerPhone,2,9) AS VarChar) AS [Local Phone] ,
 SUM(SalesTransaction.gameQuantity) AS [Games Sold],
 COUNT(SalesTransaction.saleId) AS [Total Transaction]
 FROM Developers,SalesTransaction,Games
 WHERE Developers.developerId=Games.developerId AND Games.gameId=SalesTransaction.gameId
 AND (RIGHT(Developers.developerId,3)>=3 AND RIGHT(Developers.developerId,3)<=9)
 GROUP BY Developers.developerId,developerName,developerPhone

 --4.	Display UserNickname, User Country (obtained from UserCountry in uppercase format), 
 --Total Game Purchased (obtained from the sum of quantity), and Game Owned (obtained from the count of game) 
 --for every user which ID is ‘USR004’ or ‘USR005’ and purchased a game that is released on odd day of the month.
 --4
 SELECT userNickname, 
 UPPER(userCountry) AS [userCountry],
 SUM(SalesTransaction.gameQuantity) AS [Total Game Purchased],
 COUNT(SalesTransaction.gameId) AS [Game Owned]
 FROM Users,SalesTransaction
 WHERE SalesTransaction.userId = Users.userId AND (RIGHT(Users.userId,3)=4 OR RIGHT(Users.userId,3)=5) AND (DATENAME(DAY,SalesTransaction.transactionDate))%2=1
 Group BY userNickname,userCountry

 SELECT * FROM Users
 select * from SalesTransaction

-- 5.	Display Numeric User Id (obtained from the last 3 characters of UserId), Nickname 
--(obtained from UserNickname in uppercase format),and UserCountry for every user who purchased a game with  
-- a quantity higher than average of all game quantity sold and the user nickname contains ‘k’.

--5

SELECT * FROM USERS

SELECT Right(Users.userid,3) AS [Numeric User ID],
UPPER(UserNickname) AS [Nickname],
userCountry
FROM users, Salestransaction,
(SELECT AVG(gameQuantity) AS Average FROM SalesTransaction) AS A
WHERE Users.userId=SalesTransaction.userId 
AND SalesTransaction.gameQuantity > A.Average AND CHARINDEX('k',Users.userNickname,0) > 0



--6.	Display GameId, GameTitle, PublisherName, and Publisher Email (obtained from the characters before ‘@’ in PublisherEmail)
--for every game which is sold with quantity more than the maximum quantity of all transaction that occurred on the 22nd day of that month.
--(alias subquery)
--6
	SELECT games.gameId,gameTitle,publisherName,SUBSTRING(publisherEmail,0,CHARINDEX('@',publisherEmail,0)) AS [Publisher Email] FROM Games,Publishers,SalesTransaction,
	(SELECT MAX(gameQuantity) AS mx FROM SalesTransaction WHERE DATENAME(DAY,transactionDate)=22) AS A
	Where Publishers.publisherId=Games.publisherId and  gameQuantity> a.mx
	GROUP BY Games.gameId,gameTitle,publisherName,publisherEmail
	
--7.	Display DeveloperId, DeveloperName, Game Title (obtained from GameTitle in lowercase format), and Total Genre 
--(obtained from the count of genre and ended with ‘ genre(s)’) for every developer who created a game on a day greater 
--than the maximum day of every game that is released on April.
--7 
	SELECT Developers.developerId,developerName,LOWER(gameTitle) as [Game Title] ,
	CAST (GenID AS varchar)+' genre(s)' AS [Total Genre]
	FROM Developers,Games,GameGenres,
	(SELECT gameId,COUNT(genreId) AS GenID FROM GameGenres GROUP BY gameId) AS A,
		(SELECT MAX(DATENAME(DAY,releaseDate)) AS MAXDat FROM Games WHERE DATENAME(MONTH,releaseDate)='April') AS B
	WHERE Developers.developerId=Games.developerId AND GameGenres.gameId=Games.gameId AND A.gameId=Games.gameId
	AND DATENAME(DAY,releaseDate) = B.maxDAT + 1
	GROUP BY Games.gameId , Developers.developerId,developerName,Games.gameTitle,A.GenID

--8.	Display UserNickname, User First Name (obtained from the first word of UserFullName), 
--Sales Date (obtained from SalesDate in ‘dd mon yyyy’ format), and Total Quantity (obtained from the sum of quantity) 
--for every user who purchased a game with a quantity greater than the maximum quantity of all transaction that occurred on 20th day of the month.	
--8
	SELECT userNickname, LEFT(userFullname,CHARINDEX(' ',userfullname,0)) AS [First Name],
	CONVERT(varchar,transactionDate,106) AS [Sales Date] , A.SUMquan AS [Total Quantity]
	FROM Users,SalesTransaction,
	(SELECT userId, SUM(gameQuantity) AS SUMquan FROM SalesTransaction Group By userId) AS A,
	(SELECT MAX(gameQuantity) AS MAXgame FROM SalesTransaction WHERE DATENAME(DAY,transactionDate)=20) AS B
	WHERE A.userId=SalesTransaction.userId and SalesTransaction.userId = Users.userId  AND A.SUMquan>B.MAXgame 
	Group BY userNickname,userFullname,transactionDate,A.SUMquan

--9.	Create a view named ‘CustomUserViewer’ to display UserId, UserNickname, Minimum Quantity 
--(obtained from minimum of quantity sold), and Maximum Quantity (obtained from maximum of quantity sold) 
--for every transaction that occurred on the 25th day of the month and the user’s nickname contains ‘r’.

create view CustomUserViewer
AS 
SELECT Users.userId, UserNickname, MIN(gameQuantity) AS [Min], Max(gameQuantity) AS [Max]
FROM Users, SalesTransaction
where DATENAME(DAY, transactionDate)=25 AND CHARINDEX('r',userNickname,0) >0 
GROUP BY Users.userId, userNickname, gameQuantity

SELECT * FROM CustomUserViewer


--10. Create a view named ‘CustomPublisherViewer’ to display PublisherName, GameTitle, 
--Release Date (obtained from GameReleaseDate in ‘dd mon yyyy’ format), 
--Total Purchase (obtained from the sum of quantity), and 
--Minimum Purchase (obtained from the minimum of quantity) for every publisher which 
--released a game from a developer in the same country and the game was released in April.

create view CustomPublisherViewer
AS 
SELECT publisherName, gameTitle,
CONVERT(varchar,releaseDate,106) AS [Release Date] ,
SUM(gameQuantity) AS [Total Purchase],
MIN(gameQuantity) As [Minimum Purchase]
FROM Publishers,Games,Developers,SalesTransaction
WHERE Games.publisherId=Publishers.publisherId AND Developers.developerId=Games.developerId 
AND Developers.developerCountry=Publishers.publisherCountry 
AND Games.gameId=SalesTransaction.gameId
AND DATENAME(MONTH,releaseDate)='April'
GROUP BY publisherName,gameTitle,releaseDate






