USE JTeam;

DROP TABLE IF EXISTS AwardStatus;
CREATE TABLE AwardStatus(
statusID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
statusInfo VARCHAR(20)
);

INSERT INTO AwardStatus (statusID, statusInfo) VALUES (1,'Award Granted');
INSERT INTO AwardStatus (statusID, statusInfo) VALUES (2,'Waiting For Result');
INSERT INTO AwardStatus (statusID, statusInfo) VALUES (3,'Award Not Granted');

SELECT * FROM AwardStatus;

