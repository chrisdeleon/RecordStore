INSERT INTO Artist
VALUES (1, 'Bad', 'Bunny'), (2, 'Michael', 'Jackson'), (3, 'Stevie', 'Wonder'),
(4, 'Bob', 'Marley'), (5, 'Pink', 'Floyd'), (6, 'Kate', 'Bush');


INSERT INTO Album
VALUES (1, 1, 'Un Verano Sin Ti', '2022-05-06', 1, 'CD'), 
(2, 2, 'Thriller', '1982-02-30', 1, 'DVD'),
(3, 3, 'Innervisions', '1973-08-03', 1, 'Vinyl'), 
(4, 4, 'Legend', '1984-05-08', 1, 'Vinyl'),
(5, 5, 'The Dark Side of the Moon', '1973-03-01', 1, 'CD'),
(6, 6, 'Hounds of Love', '1985-09-16', 1, 'DVD');

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
(5, 'John', 'Buck', 'johnbuck@yahoo.com', '1111 Default Blvd.', 'Dinosaur', 'CO', 801610'),
(6, 'Jane', 'Doe', 'jdoe@hotmail.com', '1001 E. Chestnut Expy.', 'Springfield', 'MO', '65802');


