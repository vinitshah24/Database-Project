# Listing all active stories with assigned reporters (sequenced story name within reporter name)
# Active Stories and their Assigned Reporters
USE jTeam;
SELECT S.storyID, S.storyName, P.peopleID, P.firstName, P.lastName 
FROM Story S, People P, TeamStory TS, ReporterTeam RT
WHERE S.storyEnd IS NULL AND S.storyID = TS.storyFID AND TS.teamFID = RT.teamFID AND RT.reporterFID = P.peopleID;

# Listing all reporters with salaries.
USE JTeam;
SELECT P.peopleID, P.firstName, P.lastName, R.salary
FROM People P, Reporter R
WHERE R.peopleFID = P.peopleID;

# Listing of all interns with average hire index of 3.5 or higher
USE JTeam;
SELECT P.peopleID, P.firstName, P.lastName, IE.hireFID
FROM People P, InternEvaluation IE
WHERE IE.studentFID = P.peopleID AND IE.hireFID > 3.5
ORDER BY IE.hireFID DESC;
