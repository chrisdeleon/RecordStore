USE cd0970276
GO

-- Question 7: Which album has the most songs?

SELECT * FROM Song; -- For reference

SELECT * FROM Album; -- For reference

-- Answer with default data should be the Album "Legend" by Bob Marley identified by ID 4.

SELECT Song.Album_ID, count(Song_ID) as Songs_in_Album
FROM Song
INNER JOIN Album ON Album.Album_ID = Song.Album_ID
GROUP BY Song.Album_ID;