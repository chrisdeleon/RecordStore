USE cd0970276
GO

-- Question 2: What albums were published during a given year?


-- Updated some data for more diverse results.

UPDATE Album
SET Album_Published = '04-July-1776'
WHERE Album_ID = 1;

UPDATE Album
SET Album_Published = '09-February-1776'
WHERE Album_ID = 3;

UPDATE Album
SET Album_Published = '28-April-1776'
WHERE Album_ID = 4;


-- Selects albums from year that matches query.
-- To change the year selected, the year must be changed in both expressions

SELECT * FROM Album; -- pulls entire table

SELECT * 
FROM Album
WHERE Album_Published > '01-January-1776' AND Album_Published < '31-December-1776';