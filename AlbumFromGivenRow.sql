USE cd0970276
GO

-- Question 6: List all of the albums for a given row (your choice).

SELECT *, ROW_NUMBER() OVER (ORDER BY Album_ID) as Row_Num  -- For reference.
FROM Album;



SELECT * 
FROM (
	SELECT
		Album_Title, ROW_NUMBER() OVER (ORDER BY Album_ID) as Row_Num
	FROM Album) as query
WHERE Row_Num = 2; -- Change this number to grab the row desired.