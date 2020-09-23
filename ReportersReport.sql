-- Reporters reports - Listing their active stories and any assigned interns.
-- Reporter, their teams, their team's active stories and interns working with them on those active stories
SELECT RT.reporterFID, P1.firstName, P1.lastName, RT.teamFID, T.teamName , TS.storyFID, S.storyName, P2.peopleID, P2.firstName, P2.lastName
FROM ReporterTeam RT, people P1, team T, TeamStory TS, Story S, people P2, InternTeam IT 
WHERE RT.reporterFID = P1.peopleID AND RT.teamFID = T.teamID
AND RT.teamFID = TS.teamFID AND TS.storyFID = S.storyID 
AND T.teamID = IT.teamFID AND IT.internFID = P2.peopleID AND S.storyEnd IS NULL
ORDER BY P1.firstName; 

-- Reporter, story and interns working with them on their active stories
SELECT RT.reporterFID, P1.firstName, P1.lastName, TS.storyFID, S.storyName, P2.peopleID, P2.firstName, P2.lastName
FROM ReporterTeam RT, people P1, team T, TeamStory TS, Story S, people P2, InternTeam IT 
WHERE RT.reporterFID = P1.peopleID AND RT.teamFID = T.teamID
AND RT.teamFID = TS.teamFID AND TS.storyFID = S.storyID 
AND T.teamID = IT.teamFID AND IT.internFID = P2.peopleID AND S.storyEnd IS NULL
ORDER BY P1.firstName; 