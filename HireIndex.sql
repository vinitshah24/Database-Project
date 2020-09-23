USE JTeam;

DROP TABLE IF EXISTS HireIndex;
CREATE TABLE HireIndex(
hireID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
hireDesc VARCHAR(50)
);

USE JTeam;
INSERT INTO HireIndex (hireID,hireDesc) VALUES(1,'No');
INSERT INTO HireIndex (hireID,hireDesc) VALUES(2,'Potential, but not additional experience required');
INSERT INTO HireIndex (hireID,hireDesc) VALUES(3,'Consider for a Trainee Reporter position');
INSERT INTO HireIndex (hireID,hireDesc) VALUES(4,'Consider for Entry Reporter position');
INSERT INTO HireIndex (hireID,hireDesc) VALUES(5,'Consider for Reporter position');

SELECT * FROM HireIndex;