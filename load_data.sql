LOAD DATA LOCAL INFILE 'gym.csv'
INTO TABLE gym
FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY '\\'
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'victorytype.csv'
INTO TABLE victorytype
FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY '\\'
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'fighter.csv'
INTO TABLE fighter
FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY '\\'
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'match.csv'
INTO TABLE `match`
FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY '\\'
LINES TERMINATED BY '\n';

LOAD DATA LOCAL INFILE 'fightermatchperformance.csv'
INTO TABLE fightermatchperformance
FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY '\\'
LINES TERMINATED BY '\n';


INSERT INTO gym (GymID, Name, Location)
VALUES (11, 'Anvil Street BJJ', 'Dundee');

INSERT INTO victorytype (TypeID, MethodName)
VALUES (11, 'Heel Hook');

INSERT INTO fighter (FighterID, FirstName, LastName, Nationality, BeltRank, GymID)
VALUES (13, 'Imani', 'Okafor', 'Nigeria', 'Blue', 11);

INSERT INTO `match` (MatchID, EventDate, TypeID)
VALUES (11, '2025-06-14', 11);

INSERT INTO fightermatchperformance (FighterID, MatchID, PointsScored, Result)
VALUES (13, 11, 5, 'Win'),
       (2,  11, 3, 'Loss');
