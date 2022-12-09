USE cd0970276
GO
-- Question 1: What albums and songs are currently in stock?

-- Updated certain albums to make data more diverse for question.

UPDATE Album
SET Available = 0
WHERE Artist_ID = 2;

UPDATE Album
SET Available = 0
WHERE Artist_ID = 5;

UPDATE Album
SET Available = 0
WHERE Artist_ID = 6;

-- Selects albums that are in stock, should only populate 3 albums.

SELECT * 
FROM Album
WHERE Available = 1;

-- Selects songs from the three albums that are available.

SELECT Song.Song_ID, Song.Song_Title, Album.Album_Title
FROM Song
INNER JOIN Album ON Song.Album_ID = Album.Album_ID
WHERE Album.Available = 1;
