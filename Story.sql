DROP TABLE IF EXISTS Story;

CREATE TABLE Story(
storyID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
storyName VARCHAR(20) NOT NULL,
storyCategory VARCHAR(100) DEFAULT 'Politics',
storyStart DATE,
storyEnd DATE DEFAULT NULL
);

INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (1,"floral","Entertainment","2018-09-21","2019-06-19");
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (2,"green","Sports","2018-02-02","2019-05-10");
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (3,"purple","Politics","2018-07-12",NULL);
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (4,"maroon","Health","2018-11-29",NULL);
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (5,"fuchsia","Justice","2018-05-20",NULL);
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (6,"azure","Justice","2018-06-04","2019-05-13");
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (7,"gold","Food","2018-02-12","2019-01-12");
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (8,"red","Justice","2017-11-29","2019-04-18");
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (9,"orange","Politics","2018-10-17",NULL);
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (10,"aquamarine","Travel","2018-06-20",NULL);
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (11,"violet","Justice","2018-05-24",NULL);
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (12,"seashell","Sports","2018-06-06",NULL);
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (13,"coral","Sports","2018-05-22",NULL);
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (14,"indigo","Justice","2018-01-18","2019-03-11");
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (15,"bisque","World","2018-05-24",NULL);
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (16,"silver","Travel","2018-03-17",NULL);
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (17,"beige","Living","2017-12-12",NULL);
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (18,"yellow","Living","2018-03-28","2019-06-16");
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (19,"magenta","Travel",DEFAULT,DEFAULT);
INSERT INTO Story (storyID,storyName,storyCategory,storyStart,storyEnd) VALUES (20,"peru","Tech",DEFAULT,DEFAULT);


CREATE INDEX Story_storyID_ix ON Story (storyID);
CREATE INDEX Story_storyName_ix ON Story (storyName);

USE jTeam;
SELECT * FROM Story;

USE jTeam;
SELECT storyName, storyEnd FROM Story;

USE jTeam;
SELECT COUNT(*) FROM Story;

USE jTeam;
SELECT S.storyID, S.storyName
FROM Story S
WHERE S.storyEnd IS NULL;

DROP FUNCTION IF EXISTS Story_Count;
DELIMITER //
CREATE
   DEFINER = CURRENT_USER
   FUNCTION Story_Count ()
   RETURNS INT DETERMINISTIC
   BEGIN
      DECLARE temp INT; 
      SET temp = 0;
      SELECT COUNT(*) INTO temp FROM Story;
      RETURN temp;
   END//
DELIMITER ;
SELECT Story_Count();