USE jteam;
DROP TABLE IF EXISTS Student;
CREATE TABLE Student(
studentID INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
peopleFID INT NOT NULL,
school VARCHAR(100) NULL,
major VARCHAR(30) NULL,
gradDate DATE NULL
);

INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (1,"100","Princeton University","Marketing","2018-10-29");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (2,"101","Pennsylvania State University","Public Relations","2019-04-06");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (3,"103","University of Michigan","Communication","2019-10-07");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (4,"105","Whitman College","Marketing","2019-03-13");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (5,"107","University of Georgia","Marketing","2018-05-17");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (6,"108","Oberlin College","Communication","2019-03-13");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (7,"109","Northwestern University","Public Relations","2019-12-15");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (8,"110","Wheaton College","Marketing","2018-08-26");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (9,"111","Oberlin College","Marketing","2019-12-05");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (10,"113","Middlebury College","Sales","2019-06-19");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (11,"114","Princeton University","Sales","2018-12-11");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (12,"115","Virginia Military Institute","Marketing","2019-12-30");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (13,"117","United States Coast Guard Academy","Public Relations","2018-04-28");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (14,"118","University","Journalism","2018-09-09");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (15,"120","Virginia Military Institute","Public Relations","2019-06-02");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (16,"121","University of Georgia","Journalism","2019-07-27");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (17,"122","University of Rochester","Public Relations","2018-05-31");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (18,"123","Davidson College","Sales","2019-01-26");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (19,"124","University of Virginia","Marketing","2018-03-31");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (20,"125","Washington University in Saint Louis","Journalism","2020-01-27");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (21,"126","Carnegie Mellon University","Marketing","2019-09-29");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (22,"128","Rice University","Sales","2019-11-11");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (23,"130","Virginia Military Institute","Marketing","2018-10-17");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (24,"131","Colgate University","Communication","2018-04-23");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (25,"135","Middlebury College","Communication","2018-06-11");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (26,"136","University of Rochester","Journalism","2020-01-19");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (27,"137","Carnegie Mellon University","Journalism","2019-10-08");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (28,"138","Haverford College","Sales","2018-06-15");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (29,"139","Wake Forest University","Communication","2019-11-08");
INSERT INTO Student (studentID,peopleFID,school,major,gradDate) VALUES (30,"143","Northwestern University","Marketing","2019-11-23");

ALTER TABLE Student
ADD FOREIGN KEY (peopleFID) REFERENCES People(peopleID);

CREATE INDEX Student_studentID_ix ON Student (studentID);
CREATE INDEX Student_peopleFID_ix ON Student (peopleFID);

USE JTeam;
SELECT * FROM Student;

USE JTeam;
SELECT COUNT(*) FROM Student;

USE JTeam;
SELECT People.*, Student.*
FROM People, Student
WHERE Student.peopleFID = People.peopleID;