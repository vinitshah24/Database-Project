-- Interns reports - Listing all their stories and any assigned reporters.
-- All the stories of the Intern (including stories which has ended) 
USE jteam;
SELECT IT.internFID, P.firstName, P.lastName, IT.teamFID, T.teamName, TS.storyFID, S.storyName, S.storyEnd
FROM internteam IT, people P, team T, TeamStory TS, Story S
WHERE IT.internFID = P.peopleID AND IT.teamFID = T.teamID AND IT.teamFID = TS.teamFID AND TS.storyFID = S.storyID
ORDER BY P.firstName; 

-- All the stories of the Intern which are currently active 
USE jteam;
SELECT IT.internFID, P.firstName, P.lastName, IT.teamFID, T.teamName, TS.storyFID, S.storyName #, S.storyEnd
FROM internteam IT, people P, team T, TeamStory TS, Story S
WHERE IT.internFID = P.peopleID AND IT.teamFID = T.teamID AND IT.teamFID = TS.teamFID AND TS.storyFID = S.storyID AND S.storyEnd IS NULL
ORDER BY P.firstName; 