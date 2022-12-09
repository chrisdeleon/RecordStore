USE cd0970276
GO

-- Question 4: List all of the songs and albums for a given artist (your choice)?
-- For this question, I went with Bad Bunny since I was playing his music at the time. 

SELECT * FROM Song; -- For reference

SELECT * FROM Album; -- For reference



SELECT Album_ID, Album_Title -- returns album
FROM Artist
INNER JOIN Album ON Artist.Artist_ID = Album.Album_ID
WHERE Artist_FName = 'Bad' AND Artist_LName = 'Bunny';


-- returns songs
SELECT Song.Song_ID, Song.Song_Title, Album.Album_Title
FROM Song
INNER JOIN Album ON Song.Album_ID = Album.Album_ID
INNER JOIN Artist ON Album.Album_ID = Artist.Artist_ID
WHERE Artist.Artist_FName = 'Bad' AND Artist_Lname = 'Bunny';


