USE cd0970276
GO

-- Question 3: What albums in stock are on CD?


-- Displays songs with CD in CK_Media
SELECT * 
FROM Album
WHERE CK_Media = 'CD';