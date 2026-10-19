--STUDENT NUMBER: 3520872
-- Query 1: LIKE - fighters whose last name starts with "Mc"
SELECT FighterID,
       FirstName,
       LastName,
       Nationality
FROM   fighter
WHERE  LastName LIKE 'Mc%'
ORDER BY LastName;

-- Query 2: JOIN - each match winner with the match date and victory method
SELECT f.FirstName,
       f.LastName,
       m.EventDate,
       v.MethodName
FROM   fightermatchperformance AS p
       JOIN fighter     AS f ON p.FighterID = f.FighterID
       JOIN `match`     AS m ON p.MatchID   = m.MatchID
       JOIN victorytype AS v ON m.TypeID    = v.TypeID
WHERE  p.Result = 'Win'
ORDER BY m.EventDate, m.MatchID;

-- Query 3: > operator - performances scoring more than 5 points
SELECT FighterID,
       MatchID,
       PointsScored,
       Result
FROM   fightermatchperformance
WHERE  PointsScored > 5
ORDER BY PointsScored DESC;

-- Query 4: GROUP BY - matches fought, wins and win rate per fighter
SELECT f.FighterID,
       f.FirstName,
       f.LastName,
       COUNT(*)                                           AS MatchesFought,
       SUM(p.Result = 'Win')                              AS Wins,
       ROUND(SUM(p.Result = 'Win') * 100.0 / COUNT(*), 1) AS WinRatePercent
FROM   fightermatchperformance AS p
       JOIN fighter AS f ON p.FighterID = f.FighterID
GROUP BY f.FighterID, f.FirstName, f.LastName
ORDER BY WinRatePercent DESC, MatchesFought DESC, f.LastName;

-- Query 5: IN - fighters ranked Blue or Purple belt
SELECT FighterID,
       FirstName,
       LastName,
       BeltRank
FROM   fighter
WHERE  BeltRank IN ('Blue', 'Purple')
ORDER BY BeltRank, LastName;

-- Query 6a: UPDATE - check the three white belts before promotion
SELECT FighterID, FirstName, LastName, BeltRank
FROM   fighter
WHERE  FighterID IN (4, 6, 9);

-- Query 6b: UPDATE - promote three fighters from White to Blue belt
UPDATE fighter
SET    BeltRank = 'Blue'
WHERE  FighterID IN (4, 6, 9);

-- Query 6c: UPDATE - confirm the three promotions
SELECT FighterID, FirstName, LastName, BeltRank
FROM   fighter
WHERE  FighterID IN (4, 6, 9);
