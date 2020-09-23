# List all award submissions including the names of the award and the story.
SELECT St.storyName, Aw.awardName, AwS.statusInfo
FROM Story St, Award Aw, AwardStatus AwS, StorySubmission AwSub
WHERE AwSub.storyFID = St.storyID AND AwSub.awardFID = Aw.awardID AND AwSub.statusFID = AwS.statusID;

# Stories that have received awards with Natural Join.
SELECT St.storyName, Aw.awardName, AwS.statusInfo
FROM Story St, Award Aw, AwardStatus AwS, StorySubmission AwSub
WHERE AwSub.storyFID = St.storyID AND AwSub.awardFID = Aw.awardID AND AwSub.statusFID = AwS.statusID AND Aws.statusID = 1;

/**
# Stories that have received awards with JOIN statement.
SELECT St.storyName, Aw.awardName, AwS.statusInfo
FROM Story St, Award Aw, AwardStatus AwS, StorySubmission AwSub JOIN St ON
AwSub.storyFID = St.storyID AND AwSub.awardFID = Aw.awardID AND AwSub.statusFID = AwS.statusID AND Aws.statusID = 1;
**/