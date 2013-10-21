-- Exercise 15: Data Modeling
-- http://sql.learncodethehardway.org/book/ex15.html

-- Create tables
CREATE TABLE IF NOT EXISTS Location (
    LOCATION_ID INTEGER PRIMARY KEY,
    Description TEXT
);

CREATE TABLE IF NOT EXISTS Item (
    ITEM_ID     INTEGER PRIMARY KEY,
    Location_ID INTEGER,
    -- Location_ID TEXT,
    Name        TEXT
);

CREATE TABLE IF NOT EXISTS Record (
    ITEM_ID      INTEGER,
    INVENTORY_ID INTEGER,
    Count        INTEGER,
    Comments     TEXT,
    PRIMARY KEY (ITEM_ID, INVENTORY_ID)
);

CREATE TABLE IF NOT EXISTS Inventory (
    INVENTORY_ID INTEGER PRIMARY KEY,
    Date         DATETIME,
    Personnel    TEXT
);

-- Populate tables
INSERT OR REPLACE INTO Location (LOCATION_ID, Description)
    VALUES
        (0, 'Elsewhere'),
        (1, 'Hand Shed - Back Wall'),
        (2, 'Hand Shed - Black Cabinet'),
        (3, 'Hand Shed - Kobalt Tool Chest'),
        (4, 'Hand Shed - Left Wall'),
        (5, 'Hand Shed - Right Wall'),
        (6, 'Hand Shed - Shelves'),
        (7, 'Power Shed - Left Wall'),
        (8, 'Power Shed - Metal Shelving'),
        (9, 'Power Shed - Right Wall'),
        (10, 'Power Shed - Yellow Tool Box'),
        (11, 'Scenic'),
        (12, 'Shop Floor'),
        (13, 'White Shelf and Peg Board');

INSERT OR REPLACE INTO Item (ITEM_ID, Name, Location_ID)
    VALUES
        (2,'Air Compressor',12),
        (3,'Table Saw Support Roller',12),
        (4,'Compound Miter Saw',12),
        (5,'Radial Arm Saw',12),
        (6,'Bench Sander',12),
        (7,'Dust Vac System',12),
        (8,'Shop Vac',12),
        (9,'Band Saw',12),
        (10,'Vice',12),
        (11,'Drill Press',12),
        (12,'Bench Grinder',12),
        (13,'Scroll Saw',12),
        (14,'Sawhorses (wooden)',12),
        (15,'Sawhorses (plastic folding)',12),
        (16,'FireStorm 18V Cordless Drill',9),
        (17,'FireStorm 18V Battery (Black)',9),
        (18,'FireStorm 18V Battery (Silver)',9),
        (19,'FireStorm 18V Charger (Black)',9),
        (20,'FireStorm 18V Charger (Silver)',9),
        (21,'FireStorm Drill Chucks',9),
        (22,'Magnetic Socket Driver Set',9),
        (23,'Worklight',9),
        (24,'Electric Chainsaw',9),
        (25,'Creeper',9),
        (26,'DeWalt Pneumatic Finish Nailer',8),
        (27,'Circular Saw',8),
        (28,'Makita Corded Circular Saw',8),
        (29,'Angle Grinder',8),
        (30,'Palm Sander',8),
        (31,'Orbital Sander',8),
        (32,'Handheld Belt Sander',8),
        (33,'Jigsaw',8),
        (34,'Reciprocating Saw (cord)',8),
        (35,'Reciprocating Saw (cordless)',8),
        (36,'Router',8),
        (37,'Bosch Oscillating Cutter',8),
        (38,'Portable Air Tank',8),
        (39,'Dremel Tool',8),
        (40,'Pneumatic Drill',10),
        (41,'Pneumatic Staple Gun',10),
        (42,'Pneumatic Brad Nailer',10),
        (43,'Pneumatic Angle Grinder',10),
        (44,'Pneumatic Paint Gun',10),
        (45,'Pneumatic Hammer',10),
        (46,'Pneumatic Torque Wrench',10),
        (47,'Remington Hammer',7),
        (48,'Makita 18V 2pc Cordless Combo Kit',9),
        (49,'Dust Pan',4),
        (50,'Push Shoe',4),
        (51,'Wire Brush',4),
        (52,'Hand Brush',4),
        (53,'Push Broom',4),
        (54,'Straw Broom',4),
        (55,'Rake',4),
        (56,'Bolt Cutter',4),
        (57,'Ne Kobalt Deep Socket Set',3),
        (58,'Rasp',3),
        (59,'Box Cutter',3),
        (60,'Utility Knife',3),
        (61,'Jewelers Screwdriver Set',3),
        (62,'Chalk Line',3),
        (63,'Tape Measure - 25 ft',3),
        (64,'Tape Measure - 35 ft',3),
        (65,'Tape Measure - 100 ft',3),
        (66,'Folding Ruler',3),
        (67,'File',3),
        (68,'Allen Wrench Set',3),
        (69,'Socket Drivers, handheld',3),
        (70,'Tin Snips',3),
        (71,'Chisels',3),
        (72,'Wire Cutter',3),
        (73,'Wire Cutter/Stripper',3),
        (74,'Phillips Screwdriver',3),
        (75,'Slot Screwdriver',3),
        (76,'Adjustable Crescent Wrench',3),
        (77,'Standard Box End Wrench Set',3),
        (78,'Regular Pliers',3),
        (79,'Lineman Pliers',3),
        (80,'Needlenose Pliers',3),
        (81,'Vice Grip Pliers',3),
        (82,'Channel Locl Pliers',3),
        (83,'Socket Set - Metric',3),
        (84,'Socket Set - Imperial',3),
        (85,'Calipers',2),
        (86,'Compass',2),
        (87,'Yellow KR Cutter',2),
        (88,'Honing Stone',2),
        (89,'Staple Gun (manual)',2),
        (90,'Staple Gun (electric)',2),
        (91,'Rivet Gun',2),
        (92,'Scissors',1),
        (93,'Nail Hammer',1),
        (94,'Ball Peen Hammer',1),
        (95,'Tack Hammer',1),
        (96,'Sledgehammer',1),
        (97,'Axe',1),
        (98,'Carpenter Square',1),
        (99,'Speed Square',1),
        (100,'T-Square',1),
        (101,'Framing Square',1),
        (102,'Metal Yard Stick',1),
        (103,'Metal 5'' Stick',1),
        (104,'Torpedo Level',1),
        (105,'Level - 24 inches',1),
        (106,'Level - 48 inches',1),
        (107,'Prybar',1),
        (108,'Long Crowbar',1),
        (109,'Crowbar',1),
        (110,'Pipe Wrench - 8 inches',1),
        (111,'Pipe Wrench - 10 inches',1),
        (112,'Pipe Wrench - 18 inches',1),
        (113,'Handsaw',1),
        (114,'Boxsaw',1),
        (115,'Hacksaw',1),
        (116,'Coping Saw',1),
        (117,'Drywal Saw',1),
        (118,'Mini Hacksaw',1),
        (119,'Bar Clamp - hand clamp',5),
        (120,'Bar Clamp - 2.5" x 6"',5),
        (121,'C-Clamp - 1.5 inches',5),
        (122,'C-Clamp - 2 inches',5),
        (123,'C-Clamp - 2.5 inches',5),
        (124,'C-Clamp - 3 inches',5),
        (125,'C-Clamp - 4 inches',5),
        (126,'Caulking Gun',5),
        (127,'Large Caulking Gun',5),
        (128,'Come-Along Winch',5),
        (129,'Pipe Bender',5),
        (130,'Grease Gun',5),
        (131,'Hard Hats',6),
        (132,'Propane Torch',6),
        (133,'Nail Set',6),
        (134,'Post and Pipe Level',6),
        (135,'Miter Box',6),
        (136,'Electrical Toolbox',6),
        (137,'Miscellaneous Toolbox',6),
        (138,'Oil Can',6),
        (139,'12" Foam Cutter',13),
        (140,'CD/Tape/Radio Player',13),
        (141,'Safety Glasses',13),
        (142,'Gloves',13),
        (143,'Glue Gun',13),
        (144,'Soldering Gun',13),
        (145,'Rubber Mallet',11),
        (146,'Spray Gun',11),
        (147,'Rollers',11),
        (148,'Wire Brush - full',11),
        (149,'Wire Brush - toothbrush-sized',11),
        (150,'Roller and Brush Cleaner Tool',11),
        (151,'Putty Knife',11),
        (152,'Glass Scraper',11),
        (153,'Step Stool',0),
        (154,'Ladder - 5 foot',0),
        (155,'Ladder - 8 foot',0),
        (156,'Ladder - 8 foot (wooden)',0),
        (157,'Ladder - 12 foot',0),
        (158,'Ladder - 15 foot',0),
        (159,'Extension Ladder - 24 foot',0),
        (160,'Extension Ladder - 40 foot',0),
        (161,'Little Giant Ladders',0),
        (162,'SawStop 10 inch Table Saw',12);

INSERT OR REPLACE INTO Record (ITEM_ID, INVENTORY_ID, Count, Comments)
    VALUES
        (99, 1, 4, ''),
        (99, 2, 3, 'missing one'),
        (99, 3, 4, ''),
        (99, 4, 4, ''),
        (99, 5, 4, ''),
        (99, 6, 5, 'new one?');

INSERT OR REPLACE INTO Inventory (INVENTORY_ID, Date, Personnel)
    VALUES
        (1,'2010-05-13 0:00:00','Scott Reinbold'),
        (2,'2010-12-16 0:00:00','Scott Reinbold'),
        (3,'2011-05-08 0:00:00','Nathan Files'),
        (4,'2011-12-19 0:00:00','Nathan Files'),
        (5,'2012-05-15 0:00:00','Nathan Files'),
        (6,'2012-12-13 0:00:00','Nathan Files');


-- Test Queries
SELECT Inventory.Date, Inventory.Personnel, Location.Description AS [Location], Item.Name, Record.Count, Record.Comments
FROM Record
JOIN Item
ON Item.ITEM_ID = Record.ITEM_ID
JOIN Inventory
ON Inventory.INVENTORY_ID = Record.INVENTORY_ID
JOIN Location
ON Location.LOCATION_ID = Item.Location_ID;