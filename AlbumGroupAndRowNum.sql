USE cd0970276
GO

-- Question 5: For a given song, what is the album, group and row number?

SELECT * FROM Song; -- For reference

SELECT Song.Song_Title, Album.Album_Title, (Artist.Artist_FName + ' ' + Artist.Artist_LName) AS Artist_Name, ROW_NUMBER() OVER(ORDER BY SONG_ID) AS num_row
FROM Song
INNER JOIN Album ON Album.Album_ID = Song.Album_ID
INNER JOIN Artist ON Artist.Artist_ID = Album.Artist_ID;
