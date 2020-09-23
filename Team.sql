DROP TABLE IF EXISTS Team;
CREATE TABLE Team(
teamID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
teamName VARCHAR(20) NOT NULL,
teamDesc VARCHAR(100) DEFAULT NULL
);

INSERT INTO Team (teamID,teamName,teamDesc) VALUES (1,'Eagles','Fully-configurable composite complexity');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (2,'Patriots','Exclusive background secured line');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (3,'Cougars','Down-sized tertiary interface');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (4,'Raiders','Reduced system-worthy hub');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (5,'Express','Secured dynamic installation');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (6,'Yankee','Public-key eco-centric architecture');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (7,'Thunderbirds','Open-source multi-state encoding');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (8,'Tigers','Phased motivating neural-net');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (9,'Oscar','Diverse clear-thinking initiative');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (10,'Lions','Expanded heuristic approach');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (11,'Cardinals','Digitized analyzing success');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (12,'Vikings','Automated executive system engine');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (13,'Delta','De-engineered multimedia complexity');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (14,'Saints','Robust system-worthy encryption');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (15,'Comets','Pre-emptive real-time parallelism');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (16,'Jets','Compatible background throughput');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (17,'Victor','Distributed analyzing protocol');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (18,'Senators','Versatile systemic encryption');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (19,'Titans','Advanced bi-directional protocol');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (20,'Wolverines','Synchronised hybrid benchmark');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (21,'Wanderers','Programmable mission-critical definition');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (22,'Crusaders','Networked mobile product');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (23,'Imitators','Business-focused contextually-based software');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (24,'Dragons','Reactive holistic focus group');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (25,'Cheifs','Automated systematic installation');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (26,'Mountaineers','Intuitive mobile focus group');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (27,'Yellowjackets','Front-line value-added challenge');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (28,'Untamed','Optimized fresh-thinking knowledge user');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (29,'Shapeshifters','Stand-alone composite middleware');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (30,'Charles','Decentralized attitude-oriented matrix');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (31,'Chargers','De-engineered modular frame');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (32,'Gladiators','Realigned real-time utilisation');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (33,'Mavericks','Synchronised 24/7 ability');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (34,'Wandering Minds','Centralized mobile workforce');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (35,'Prophetics','Organized scalable leverage');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (36,'Unbeatables','Cloned mission-critical concept');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (37,'Fantasticans','Customer-focused methodical synergy');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (38,'Tyrants','Customizable fault-tolerant frame');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (39,'Tycoons','Innovative 4th generation Graphical User Interface');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (40,'Miracle Workers','Synergized responsive encoding');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (41,'Mustangs','Customizable upward-trending installation');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (42,'Braves','Sharable tertiary data-warehouse');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (43,'Enforcers','Exclusive object-oriented function');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (44,'Desperados','Reactive uniform circuit');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (45,'Compadres','Open-architected background project');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (46,'Defenders','Face to face uniform approach');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (47,'Vigilantes','Balanced discrete customer loyalty');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (48,'Showrunners','Compatible cohesive complexity');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (49,'Prodigies','Re-engineered stable customer loyalty');
INSERT INTO Team (teamID,teamName,teamDesc) VALUES (50,'Dominators','Diverse stable secured line');

CREATE INDEX Team_teamID_ix ON Team (teamID);
CREATE INDEX Team_teamName_ix ON Team (teamName);

USE JTeam;
SELECT * FROM Team;

DROP PROCEDURE IF EXISTS Team_Count;
DELIMITER //
CREATE
   DEFINER = CURRENT_USER
   PROCEDURE Team_Count (OUT countParm INT)
   BEGIN
      SELECT COUNT(*) INTO countParm FROM Team;
   END//
DELIMITER ;
SHOW PROCEDURE STATUS WHERE db = 'JTeam';
CALL Team_Count (@parm1);
SELECT @parm1;