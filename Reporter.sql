DROP TABLE IF EXISTS Reporter;
CREATE TABLE Reporter(
reporterID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
peopleFID INT NOT NULL,
title VARCHAR(40) DEFAULT NULL,
salary INT(15) 
);
ALTER TABLE Reporter
ADD FOREIGN KEY (peopleFID) REFERENCES People(peopleID);

INSERT INTO Reporter (reporterID,peopleFID,title,salary) VALUES (1,102,"Technical Writer",58785);
INSERT INTO Reporter (reporterID,peopleFID,title,salary) VALUES (2,104,"Public Relations Specialist",72310);
INSERT INTO Reporter (reporterID,peopleFID,title,salary) VALUES (3,106,"Technical Writer",59357);
INSERT INTO Reporter (reporterID,peopleFID,title,salary) VALUES (4,112,"Technical Writer",44299);
INSERT INTO Reporter (reporterID,peopleFID,title,salary) VALUES (5,116,"Social Media Specialist",88586);
INSERT INTO Reporter (reporterID,peopleFID,title,salary) VALUES (6,119,"Public Relations Specialist",99035);
INSERT INTO Reporter (reporterID,peopleFID,title,salary) VALUES (7,127,"Content Creator",43395);
INSERT INTO Reporter (reporterID,peopleFID,title,salary) VALUES (8,129,"Public Relations Specialist",73026);
INSERT INTO Reporter (reporterID,peopleFID,title,salary) VALUES (9,132,"Content Creator",93994);
INSERT INTO Reporter (reporterID,peopleFID,title,salary) VALUES (10,133,"Social Media Specialist",87834);
INSERT INTO Reporter (reporterID,peopleFID,title,salary) VALUES (11,134,"Technical Writer",76942);
INSERT INTO Reporter (reporterID,peopleFID,title,salary) VALUES (12,140,"Content Creator",40808);
INSERT INTO Reporter (reporterID,peopleFID,title,salary) VALUES (13,141,"Social Media Specialist",73963);
INSERT INTO Reporter (reporterID,peopleFID,title,salary) VALUES (14,142,"Technical Writer",86967);
INSERT INTO Reporter (reporterID,peopleFID,title,salary) VALUES (15,144,"Public Relations Specialist",54578);

CREATE INDEX Reporter_reporterID_ix ON Reporter (reporterID);

USE JTeam;
SELECT COUNT(*) FROM Reporter;

USE JTeam;
SELECT People.*, Reporter.*
FROM People, Reporter
WHERE Reporter.peopleFID = People.peopleID;

USE JTeam;
SELECT Reporter.reporterID, People.peopleID
FROM Reporter, People
WHERE Reporter.peopleFID = People.peopleID;

DROP TRIGGER IF EXISTS Reporter_salary;
DELIMITER //
CREATE
   DEFINER = CURRENT_USER
   TRIGGER Reporter_salary
   BEFORE INSERT
   ON Reporter FOR EACH ROW
   BEGIN 
      IF NEW.salary < 0 THEN
         SET NEW.salary = 0;
      END IF;
    END   //
DELIMITER ;