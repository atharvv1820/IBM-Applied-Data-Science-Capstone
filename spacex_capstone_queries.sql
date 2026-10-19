
-- IBM Applied Data Science Capstone
-- SpaceX Falcon 9 Launch Data Analysis
-- SQL dialect: SQLite

-- Query 1: Count launches at each launch site
SELECT LaunchSite, COUNT(*) AS total_launches
FROM SPACEXTBL
GROUP BY LaunchSite
ORDER BY total_launches DESC;

-- Query 2: Find the maximum payload mass
SELECT MAX(PayloadMass) AS maximum_payload_mass
FROM SPACEXTBL;

-- Query 3: Find launches carrying the maximum payload
SELECT *
FROM SPACEXTBL
WHERE PayloadMass = (
    SELECT MAX(PayloadMass)
    FROM SPACEXTBL
);

-- Query 4: Count records by landing outcome
SELECT Outcome, COUNT(*) AS outcome_count
FROM SPACEXTBL
GROUP BY Outcome
ORDER BY outcome_count DESC;

-- Query 5: Average payload mass by orbit
SELECT Orbit, AVG(PayloadMass) AS average_payload_mass
FROM SPACEXTBL
GROUP BY Orbit
ORDER BY average_payload_mass DESC;

-- Query 6: Count records by target class
SELECT Class, COUNT(*) AS record_count
FROM SPACEXTBL
GROUP BY Class
ORDER BY Class;

-- Query 7: Successful ASDS landing outcomes
SELECT *
FROM SPACEXTBL
WHERE Outcome = 'True ASDS';

-- Query 8: Successful ASDS outcomes for payloads
-- between 4000 kg and 6000 kg
SELECT *
FROM SPACEXTBL
WHERE Outcome = 'True ASDS'
  AND PayloadMass BETWEEN 4000 AND 6000;

-- Query 9: Count launches by booster version
SELECT BoosterVersion, COUNT(*) AS total_launches
FROM SPACEXTBL
GROUP BY BoosterVersion
ORDER BY total_launches DESC;

-- Query 10: First recorded successful RTLS outcome
SELECT *
FROM SPACEXTBL
WHERE Outcome = 'True RTLS'
ORDER BY Date ASC
LIMIT 1;
