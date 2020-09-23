USE JTeam;

DROP TABLE IF EXISTS InternEvaluation;
CREATE TABLE InternEvaluation(
evaluationID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
studentFID INT,
reporterFID INT,
hireFID INT(1),
evalDesc TEXT
);

INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (100,129,5,"Demonstrates an analytical capacity");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (124,132,2,"Demonstrates assertive but appropriate behavior");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (124,104,2,"Brainstorms/develops options and ideas");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (138,134,2,"Exhibits professional behavior and attitude");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (109,127,4,"Demonstrates assertive but appropriate behavior");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (105,119,2,"Exhibits professional behavior and attitude");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (100,106,3,"Works with mathematical procedures appropriate to the job");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (123,102,2,"Listens to others in an active and attentive manner");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (101,129,5,"Exhibits a positive and constructive attitude");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (110,141,4,"Seeks to understand and support the organization’s mission/goals");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (108,132,3,"Reports to work as scheduled and on-time");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (105,104,3,"Brainstorms/develops options and ideas");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (107,141,4,"Exhibits professional behavior and attitude");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (124,102,5,"Exhibits a positive and constructive attitude");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (109,142,5,"Listens to others in an active and attentive manner");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (103,104,2,"Effectively participates in meetings or group settings");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (111,144,5,"Seeks out and utilizes appropriate resources");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (113,133,1,"Respects the diversity of co-workers");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (114,104,3,"Reads/comprehends/follows written materials");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (115,140,3,"Manages and resolves conflict in an effective manner");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (117,102,3,"Reads/comprehends/follows written materials");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (118,104,2,"Accepts responsibility for mistakes and learns from experiences");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (121,142,2,"Demonstrates an analytical capacity");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (135,116,4,"Respects the diversity of co-workers");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (122,112,1,"Exhibits self-motivated approach to work");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (137,119,4,"Demonstrates effective verbal communication skills");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (143,133,2,"Exhibits a positive and constructive attitude");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (125,112,5,"Supports and contributes to a team atmosphere");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (126,106,1,"Seeks to understand and support the organization’s mission/goals");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (128,140,1,"Seeks out and utilizes appropriate resources");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (130,127,3,"Brings a sense of values and integrity to the job");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (120,112,4,"Reports to work as scheduled and on-time");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (131,116,2,"Seeks out and utilizes appropriate resources");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (136,129,1,"Brainstorms/develops options and ideas");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (138,119,1,"Demonstrates assertive but appropriate behavior");
INSERT INTO InternEvaluation (studentFID,reporterFID,hireFID,evalDesc) VALUES (139,134,5,"Effectively participates in meetings or group settings");

ALTER TABLE InternEvaluation
ADD FOREIGN KEY (studentFID) REFERENCES people(peopleID),
ADD FOREIGN KEY (reporterFID) REFERENCES people(peopleID),
ADD FOREIGN KEY (hireFID) REFERENCES hireIndex(hireID);

USE Jteam;
SELECT COUNT(*) FROM InternEvaluation;

SELECT IT.studentFID, P1.firstName, P1.lastName, IT.reporterFID, P2.firstName, P2.lastName, HI.hireDesc, IT.evalDesc
FROM InternEvaluation IT, People P1, People P2, HireIndex HI
WHERE IT.studentFID = P1.peopleID AND IT.reporterFID = P2.peopleID AND IT.hireFID = HI.hireID
ORDER BY P1.firstname ASC;

SELECT IT.studentFID, P1.firstName, P1.lastName, COUNT(P1.firstName)
FROM InternEvaluation IT, People P1, People P2, HireIndex HI
WHERE IT.studentFID = P1.peopleID AND IT.reporterFID = P2.peopleID AND IT.hireFID = HI.hireID
GROUP BY P1.firstname
ORDER BY COUNT(P1.firstName) ASC;