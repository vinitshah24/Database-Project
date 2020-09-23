USE JTeam;
DROP TABLE IF EXISTS teamStory;

CREATE TABLE teamStory(
teamStoryID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
teamFID INT,
storyFID INT
);

INSERT INTO teamStory (teamFID,storyFID) VALUES (1,18);
INSERT INTO teamStory (teamFID,storyFID) VALUES (2,2);
INSERT INTO teamStory (teamFID,storyFID) VALUES (2,1);
INSERT INTO teamStory (teamFID,storyFID) VALUES (3,11);
INSERT INTO teamStory (teamFID,storyFID) VALUES (3,12);
INSERT INTO teamStory (teamFID,storyFID) VALUES (4,13);
INSERT INTO teamStory (teamFID,storyFID) VALUES (4,5);
INSERT INTO teamStory (teamFID,storyFID) VALUES (5,16);
INSERT INTO teamStory (teamFID,storyFID) VALUES (5,4);
INSERT INTO teamStory (teamFID,storyFID) VALUES (6,2);
INSERT INTO teamStory (teamFID,storyFID) VALUES (7,6);
INSERT INTO teamStory (teamFID,storyFID) VALUES (8,10);
INSERT INTO teamStory (teamFID,storyFID) VALUES (9,8);
INSERT INTO teamStory (teamFID,storyFID) VALUES (10,4);
INSERT INTO teamStory (teamFID,storyFID) VALUES (11,7);
INSERT INTO teamStory (teamFID,storyFID) VALUES (12,13);
INSERT INTO teamStory (teamFID,storyFID) VALUES (13,15);
INSERT INTO teamStory (teamFID,storyFID) VALUES (14,9);
INSERT INTO teamStory (teamFID,storyFID) VALUES (15,8);
INSERT INTO teamStory (teamFID,storyFID) VALUES (15,1);
INSERT INTO teamStory (teamFID,storyFID) VALUES (16,7);
INSERT INTO teamStory (teamFID,storyFID) VALUES (17,10);
INSERT INTO teamStory (teamFID,storyFID) VALUES (18,6);
INSERT INTO teamStory (teamFID,storyFID) VALUES (19,3);
INSERT INTO teamStory (teamFID,storyFID) VALUES (20,5);
INSERT INTO teamStory (teamFID,storyFID) VALUES (21,14);
INSERT INTO teamStory (teamFID,storyFID) VALUES (22,13);
INSERT INTO teamStory (teamFID,storyFID) VALUES (23,12);
INSERT INTO teamStory (teamFID,storyFID) VALUES (24,1);
INSERT INTO teamStory (teamFID,storyFID) VALUES (25,10);
INSERT INTO teamStory (teamFID,storyFID) VALUES (26,18);
INSERT INTO teamStory (teamFID,storyFID) VALUES (27,16);
INSERT INTO teamStory (teamFID,storyFID) VALUES (28,1);
INSERT INTO teamStory (teamFID,storyFID) VALUES (29,4);
INSERT INTO teamStory (teamFID,storyFID) VALUES (30,6);
INSERT INTO teamStory (teamFID,storyFID) VALUES (30,10);
INSERT INTO teamStory (teamFID,storyFID) VALUES (31,11);
INSERT INTO teamStory (teamFID,storyFID) VALUES (32,13);
INSERT INTO teamStory (teamFID,storyFID) VALUES (32,16);
INSERT INTO teamStory (teamFID,storyFID) VALUES (33,17);
INSERT INTO teamStory (teamFID,storyFID) VALUES (34,1);
INSERT INTO teamStory (teamFID,storyFID) VALUES (35,2);
INSERT INTO teamStory (teamFID,storyFID) VALUES (36,5);
INSERT INTO teamStory (teamFID,storyFID) VALUES (37,6);
INSERT INTO teamStory (teamFID,storyFID) VALUES (37,10);
INSERT INTO teamStory (teamFID,storyFID) VALUES (38,13);
INSERT INTO teamStory (teamFID,storyFID) VALUES (39,14);
INSERT INTO teamStory (teamFID,storyFID) VALUES (40,16);
INSERT INTO teamStory (teamFID,storyFID) VALUES (40,1);
INSERT INTO teamStory (teamFID,storyFID) VALUES (41,18);
INSERT INTO teamStory (teamFID,storyFID) VALUES (42,15);
INSERT INTO teamStory (teamFID,storyFID) VALUES (42,14);
INSERT INTO teamStory (teamFID,storyFID) VALUES (43,3);
INSERT INTO teamStory (teamFID,storyFID) VALUES (44,5);
INSERT INTO teamStory (teamFID,storyFID) VALUES (44,9);
INSERT INTO teamStory (teamFID,storyFID) VALUES (45,2);
INSERT INTO teamStory (teamFID,storyFID) VALUES (46,7);
INSERT INTO teamStory (teamFID,storyFID) VALUES (46,5);
INSERT INTO teamStory (teamFID,storyFID) VALUES (47,15);
INSERT INTO teamStory (teamFID,storyFID) VALUES (48,13);
INSERT INTO teamStory (teamFID,storyFID) VALUES (49,12);
INSERT INTO teamStory (teamFID,storyFID) VALUES (50,7);

ALTER TABLE teamStory
ADD FOREIGN KEY (teamFID) REFERENCES team(teamID),
ADD FOREIGN KEY (storyFID) REFERENCES story(storyID);

SELECT * FROM teamStory;

USE JTeam;
SELECT TS.teamFID, T.teamName, TS.storyFID, S.storyName
FROM teamStory TS, team T, story S
WHERE TS.teamFID = T.teamID && TS.storyFID = S.storyID /** && teamStory.storyFID = 2 && teamStory.teamFID = 2; */
ORDER BY T.teamName ASC;

USE JTeam;
SELECT TS.teamFID,  T.teamName, COUNT(TS.storyFID) AS `No. Of Stories`
FROM teamStory TS, team T, story S
WHERE TS.teamFID = T.teamID && TS.storyFID = S.storyID
GROUP BY TS.storyFID
ORDER BY COUNT(TS.storyFID) ASC;

USE JTeam;
DROP VIEW IF EXISTS teamStory_view;
CREATE VIEW teamStory_view
AS SELECT TS.teamFID, T.teamName, TS.storyFID
FROM teamStory TS, team T, story S
WHERE TS.teamFID = T.teamID && TS.storyFID = S.storyID
ORDER BY T.teamName ASC;

SELECT * FROM teamStory_view;