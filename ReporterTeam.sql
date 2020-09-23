DROP TABLE IF EXISTS ReporterTeam;
CREATE TABLE ReporterTeam(
reporterTeamID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
reporterFID INT NOT NULL,
teamFID INT NOT NULL
);

ALTER TABLE ReporterTeam
ADD FOREIGN KEY (reporterFID) REFERENCES people(peopleID),
ADD FOREIGN KEY (teamFID) REFERENCES team(teamID);

INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (102,3);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (104,2);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (106,4);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (112,5);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (116,6);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (119,7);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (127,22);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (129,24);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (132,14);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (133,11);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (134,23);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (140,18);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (141,16);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (142,25);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (144,19);

INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (102,30);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (104,26);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (106,20);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (112,27);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (116,29);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (119,35);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (127,36);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (129,33);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (132,42);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (133,9);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (134,8);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (140,44);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (141,1);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (142,41);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (144,10);

INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (102,50);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (104,42);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (106,12);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (112,46);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (116,13);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (119,45);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (127,15);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (129,47);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (132,17);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (133,21);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (134,28);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (140,31);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (141,34);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (142,38);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (144,39);

INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (102,49);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (104,40);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (106,43);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (112,40);
INSERT INTO ReporterTeam (reporterFID,teamFID) VALUES (116,48);

CREATE INDEX ReporterTeam_reporterFID_ix ON ReporterTeam(reporterFID);
CREATE INDEX ReporterTeam_teamFID_ix ON ReporterTeam(teamFID);

SELECT * FROM ReporterTeam;

SELECT RT.reporterFID, P.firstName, P.lastName, RT.teamFID, T.teamName 
FROM ReporterTeam RT, people P, team T
WHERE RT.reporterFID = P.peopleID AND RT.teamFID = T.teamID
ORDER BY P.firstName; 

DROP PROCEDURE IF EXISTS ReporterTeam_Count;
DELIMITER //
CREATE
   DEFINER = CURRENT_USER
   PROCEDURE ReporterTeam_Count (OUT countParm INT)
   BEGIN
      SELECT COUNT(*) INTO countParm FROM ReporterTeam;
   END//
DELIMITER ;
SHOW PROCEDURE STATUS WHERE db = 'JTeam';
CALL ReporterTeam_Count (@parm2);
SELECT @parm2;