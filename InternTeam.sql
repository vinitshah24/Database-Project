DROP TABLE IF EXISTS InternTeam;
CREATE TABLE InternTeam(
internteamID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
internFID INT NOT NULL,
teamFID INT NOT NULL
);

INSERT INTO InternTeam (internFID, teamFID) VALUES (100,47);
INSERT INTO InternTeam (internFID, teamFID) VALUES (124,42);
INSERT INTO InternTeam (internFID, teamFID) VALUES (138,23);
INSERT INTO InternTeam (internFID, teamFID) VALUES (109,22);
INSERT INTO InternTeam (internFID, teamFID) VALUES (105,35);
INSERT INTO InternTeam (internFID, teamFID) VALUES (100,20);
INSERT INTO InternTeam (internFID, teamFID) VALUES (123,50);
INSERT INTO InternTeam (internFID, teamFID) VALUES (101,24);
INSERT INTO InternTeam (internFID, teamFID) VALUES (110,16);
INSERT INTO InternTeam (internFID, teamFID) VALUES (108,14);
INSERT INTO InternTeam (internFID, teamFID) VALUES (105,26);
INSERT INTO InternTeam (internFID, teamFID) VALUES (107,16);
INSERT INTO InternTeam (internFID, teamFID) VALUES (124,3);
INSERT INTO InternTeam (internFID, teamFID) VALUES (109,25);
INSERT INTO InternTeam (internFID, teamFID) VALUES (103,26);
INSERT INTO InternTeam (internFID, teamFID) VALUES (111,19);
INSERT INTO InternTeam (internFID, teamFID) VALUES (113,11);
INSERT INTO InternTeam (internFID, teamFID) VALUES (114,2);
INSERT INTO InternTeam (internFID, teamFID) VALUES (115,44);
INSERT INTO InternTeam (internFID, teamFID) VALUES (117,30);
INSERT INTO InternTeam (internFID, teamFID) VALUES (118,2);
INSERT INTO InternTeam (internFID, teamFID) VALUES (121,41);
INSERT INTO InternTeam (internFID, teamFID) VALUES (135,29);
INSERT INTO InternTeam (internFID, teamFID) VALUES (122,5);
INSERT INTO InternTeam (internFID, teamFID) VALUES (137,7);
INSERT INTO InternTeam (internFID, teamFID) VALUES (143,9);
INSERT INTO InternTeam (internFID, teamFID) VALUES (125,27);
INSERT INTO InternTeam (internFID, teamFID) VALUES (126,4);
INSERT INTO InternTeam (internFID, teamFID) VALUES (128,18);
INSERT INTO InternTeam (internFID, teamFID) VALUES (130,36);
INSERT INTO InternTeam (internFID, teamFID) VALUES (120,46);
INSERT INTO InternTeam (internFID, teamFID) VALUES (131,6);
INSERT INTO InternTeam (internFID, teamFID) VALUES (136,33);
INSERT INTO InternTeam (internFID, teamFID) VALUES (138,45);
INSERT INTO InternTeam (internFID, teamFID) VALUES (139,8);

ALTER TABLE InternTeam
ADD FOREIGN KEY (internFID) REFERENCES people(peopleID),
ADD FOREIGN KEY (teamFID) REFERENCES team(teamID);

CREATE INDEX InternTeam_internFID_ix ON InternTeam(internFID);
CREATE INDEX InternTeam_teamFID_ix ON InternTeam(teamFID);

USE jteam;
SELECT * FROM InternTeam;

SELECT IT.internFID, P.firstName, P.lastName, IT.teamFID, T.teamName 
FROM internteam IT, people P, team T
WHERE IT.internFID = P.peopleID AND IT.teamFID = T.teamID
ORDER BY P.firstName; 

-- Number of teams aligned with individual intern 
SELECT IT.internFID, P.firstName, COUNT(P.firstName) AS `No. of Teams` 
FROM internteam IT, people P, team T
WHERE IT.internFID = P.peopleID AND IT.teamFID = T.teamID
GROUP BY P.firstName
ORDER BY COUNT(P.firstName); 