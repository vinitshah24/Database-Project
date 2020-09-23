USE JTeam;

DROP TABLE IF EXISTS StorySubmission;
CREATE TABLE StorySubmission(
submissionID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
storyFID INT,
awardFID INT,
submissionDate DATE,
statusFID INT
);

INSERT INTO StorySubmission (storyFID, awardFID, submissionDate,statusFID) VALUES (1,10,"2019-08-20",2);
INSERT INTO StorySubmission (storyFID, awardFID, submissionDate,statusFID) VALUES (2,5,"2019-07-15",1);
INSERT INTO StorySubmission (storyFID, awardFID, submissionDate,statusFID) VALUES (6,8,"2019-08-13",3);
INSERT INTO StorySubmission (storyFID, awardFID, submissionDate,statusFID) VALUES (7,3,"2019-08-24",2);
INSERT INTO StorySubmission (storyFID, awardFID, submissionDate,statusFID) VALUES (8,6,"2019-08-21",2);
INSERT INTO StorySubmission (storyFID, awardFID, submissionDate,statusFID) VALUES (14,4,"2019-08-02",3);
INSERT INTO StorySubmission (storyFID, awardFID, submissionDate,statusFID) VALUES (18,2,"2019-08-29",1);

ALTER TABLE StorySubmission
ADD FOREIGN KEY (storyFID) REFERENCES Story(storyID),
ADD FOREIGN KEY (awardFID) REFERENCES Award(awardID),
ADD FOREIGN KEY (statusFID) REFERENCES AwardStatus(statusID);

SELECT * FROM StorySubmission;

SELECT St.storyName, Aw.awardName, Aw.awardInfo, AwSub.submissionDate,Aw.resultDate, AwS.statusInfo
FROM Story St, Award Aw, AwardStatus AwS, StorySubmission AwSub
WHERE AwSub.storyFID = St.storyID AND AwSub.awardFID = Aw.awardID AND AwSub.statusFID = AwS.statusID;
