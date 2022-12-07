USE cd0970276
GO


-- Creates all four tables needed for project.

CREATE TABLE Artist (
	Artist_ID int UNIQUE NOT NULL,
	Artist_FName varchar(255) NOT NULL,
	Artist_LName varchar(255) NOT NULL,
	PRIMARY KEY (Artist_ID)
);

CREATE TABLE Album(
	Album_ID INT UNIQUE NOT NULL,
	Artist_ID int NOT NULL,
	Album_Title varchar(255) NOT NULL,
	Album_Published DATE DEFAULT '1901-01-01', -- Default value of Jan 1st 1901.
	Available BIT NOT NULL,
	CK_Media varchar(5), 
	PRIMARY KEY (Album_ID),
	FOREIGN KEY (Artist_ID) REFERENCES Artist(Artist_ID), -- Foreign key restraint.

	-- Required check contraint, only three options for all albums.
	CHECK (CK_Media in ('CD', 'Vinyl', 'DVD')) 
);

CREATE TABLE Song (
	Song_ID int UNIQUE NOT NULL,
	Album_ID int NOT NULL,
	Song_Title varchar(255) NOT NULL,
	PRIMARY KEY (Song_ID),
	FOREIGN KEY (Album_ID) REFERENCES Album(Album_ID) -- Foreign key restraint.
);

CREATE TABLE Customer (
	Customer_ID int UNIQUE NOT NULL,
	Customer_FName varchar(255) NOT NULL,
	Customer_LName varchar(255) NOT NULL,
	CK_Email varchar(255) NOT NULL,
	CK_Street varchar(255) NOT NULL,
	CK_City varchar(255) NOT NULL,
	CK_StateAbbr varchar(2) NOT NULL, -- Required check constraint.
	CK_ZipCode varchar(5) NOT NULL,
	PRIMARY KEY (Customer_ID),
	-- Required check constraint for @ in every email.
	CHECK (CK_Email LIKE '%@%'),
	-- Required check constraint for CK_StateAbbr to only contain alphabetic characters, uppercase only.
	CHECK (CK_StateAbbr LIKE '[A-Z]{2}')
);
