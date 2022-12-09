USE cd0970276
GO

-- Creates all four tables needed for project.

CREATE TABLE Artist ( 
	Artist_ID int PRIMARY KEY,
	Artist_FName varchar(255) NOT NULL,
	Artist_LName varchar(255) NOT NULL
);

CREATE TABLE Album( 
	Album_ID INT PRIMARY KEY,
	Artist_ID int NOT NULL,
	Album_Title varchar(255) NOT NULL,
	Album_Published date DEFAULT '01-Jan-1901', -- Default value of Jan 1st 1901.
	Available bit NOT NULL,
	CK_Media varchar(5), 
	FOREIGN KEY (Artist_ID) REFERENCES Artist(Artist_ID), -- Foreign key restraint.

	-- Required check contraint, only three options for all albums.
	CHECK (CK_Media in ('CD', 'Vinyl', 'DVD')) 
);

CREATE TABLE Song ( -- works
	Song_ID int PRIMARY KEY,
	Album_ID int NOT NULL,
	Song_Title varchar(255) NOT NULL,
	FOREIGN KEY (Album_ID) REFERENCES Album(Album_ID) -- Foreign key restraint.
);


CREATE TABLE Customer ( 
	Customer_ID int PRIMARY KEY,
	Customer_FName varchar(255) NOT NULL,
	Customer_LName varchar(255) NOT NULL,
	CK_Email varchar(255) NOT NULL,
	CK_Street varchar(255) NOT NULL,
	CK_City varchar(255) NOT NULL,
	CK_StateAbbr varchar(2) NOT NULL, -- Required check constraint.
	CK_ZipCode int NOT NULL,
	-- Required check constraint for @ in every email.
	CHECK (CK_Email LIKE '%@%'),
	-- Required check constraint for CK_StateAbbr to only contain alphabetic characters, uppercase only.
	CHECK (CK_StateAbbr LIKE '[A-Z][A-Z]'),
);


-- Inserts all data for project.

INSERT INTO Artist 
VALUES (1, 'Bad', 'Bunny'), (2, 'Michael', 'Jackson'), (3, 'Stevie', 'Wonder'),
(4, 'Bob', 'Marley'), (5, 'Pink', 'Floyd'), (6, 'Kate', 'Bush');


INSERT INTO Album 
VALUES (1, 1, 'Un Verano Sin Ti', '06-May-2022', 1, 'CD'), 
(2, 2, 'Thriller', '29-Nov-1982', 1, 'DVD'),
(3, 3, 'Innervisions', '03-Aug-1973', 1, 'Vinyl'), 
(4, 4, 'Legend', '08-May-1984', 1, 'Vinyl'),
(5, 5, 'The Dark Side of the Moon', '01-Mar-1973', 1, 'CD'),
(6, 6, 'Hounds of Love', '16-Sep-1985', 1, 'DVD');

-- to not make the database large, only select songs are in each album

INSERT INTO Song 
VALUES (1, 1, 'Ya No Soy Celoso'), (2, 1, 'Tarot'), (3, 1, 'Un Verano Sin Ti'), 
(4, 2, 'Thriller'), (5, 2, 'Beat It'), (6, 2, 'Billie Jean'), 
(7, 3, 'Living For the City'), (8, 3, 'Higher Ground'), (9, 3, 'Don''t You Worry ''Bout a Thing'),
(10, 4, 'Is This Love'), (11, 4, 'No Woman No Cry'), (12, 4, 'Could You Be Loved'), (13, 4, 'Three Little Birds'),
(14, 4, 'Buffalo Soldier'), (15, 5, 'Breathe (In the Air)'), (16, 5, 'Time'), (17, 5, 'Money'), (18, 5, 'Eclipse'),
(19, 6, 'Running Up That Hill'), (20, 6, 'Hounds of Love'), (21, 6, 'The Big Sky'), (22, 6, 'Under Ice');



INSERT INTO Customer 
VALUES (1, 'Amanda', 'Lynn', 'amandalynn@gmail.com', '123 Main St.', 'Dinosaur', 'CO', '81610'),
(2, 'Price', 'Wright', 'thewrightprice@hotmail.com', '456 Alternate Ave.', 'Dinosaur', 'CO', '81610'),
(3, 'Jo', 'King', 'iamjustjoking@gmail.com', '1738 A St.', 'Boulder', 'CO', '80301'),
(4, 'Forrest', 'Green', 'forrestg@ump.com', '3547 Combahee Rd.', 'Arriba', 'CO', '80804'),
(5, 'John', 'Buck', 'johnbuck@yahoo.com', '1111 Default Blvd.', 'Dinosaur', 'CO', '80160'),
(6, 'Jane', 'Doe', 'jdoe@hotmail.com', '1001 E. Chestnut Expy.', 'Springfield', 'MO', '65802');
