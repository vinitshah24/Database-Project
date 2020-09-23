USE JTeam;

DROP TABLE IF EXISTS Award;
CREATE TABLE Award(
awardID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
awardName VARCHAR(20) NOT NULL,
resultDate DATE DEFAULT '2020-02-24',
awardInfo VARCHAR(60)
);

INSERT INTO Award (awardID, awardName, resultDate, awardInfo) VALUES (1, 'Mat Lam Tam', '2019-09-24', 'optimize cross-media ROI');
INSERT INTO Award (awardID, awardName, resultDate, awardInfo) VALUES (2, 'Alphazap', '2019-09-22', 'empower B2C solutions');
INSERT INTO Award (awardID, awardName, resultDate, awardInfo) VALUES (3, 'Prodder', '2019-10-14', 'iterate synergistic niches');
INSERT INTO Award (awardID, awardName, resultDate, awardInfo) VALUES (4, 'Namfix', '2019-09-28', 'evolve efficient networks');
INSERT INTO Award (awardID, awardName, resultDate, awardInfo) VALUES (5, 'Bytecard', '2019-09-26', 'incentivize customized markets');
INSERT INTO Award (awardID, awardName, resultDate, awardInfo) VALUES (6, 'Bitwolf', '2019-10-14', 'grow strategic experiences');
INSERT INTO Award (awardID, awardName, resultDate, awardInfo) VALUES (7, 'Fintone', '2019-09-20', 'embrace extensible niches');
INSERT INTO Award (awardID, awardName, resultDate, awardInfo) VALUES (8, 'Zamit', '2019-10-20', 'utilize end-to-end systems');
INSERT INTO Award (awardID, awardName, resultDate, awardInfo) VALUES (9, 'Namfix', '2019-11-17', 'harness robust vortals');
INSERT INTO Award (awardID, awardName, resultDate, awardInfo) VALUES (10, 'Alphazap', '2019-12-08', 'brand global functionalities');

USE Jteam;
SELECT * FROM Award;