-- [Q] [Alliance] Search Stillpine Hold (9565)
SET @GAMEOBJECT := 181748; -- Blood Crystal
SET @QUEST := 9565; -- Search Stillpine Hold

-- Add missing relation
DELETE FROM `gameobject_involvedrelation` WHERE `quest`=@QUEST;
INSERT INTO `gameobject_involvedrelation` VALUES
(@GAMEOBJECT, @QUEST);

-- Fix required races and add missing complete text
UPDATE `quest_template` SET `RequiredRaces`=2098253, `OfferRewardText`='The blood crystal radiates a sickly aura that seeps into the water of the cave.' WHERE `entry`=@QUEST;



-- [Q] [Alliance/Drainei] A Map to Where? (9550)
SET @GAMEOBJECT := 181756; -- Battered Ancient Book
SET @QUEST := 9550; -- Search Stillpine Hold

-- Add missing relation
DELETE FROM `gameobject_involvedrelation` WHERE `quest`=@QUEST;
INSERT INTO `gameobject_involvedrelation` VALUES
(@GAMEOBJECT, @QUEST);

-- Fix required races and add missing complete text
UPDATE `quest_template` SET `RequiredRaces`=1024, `OfferRewardText`='Examining the book carefully, you conclude that it must be a journal. Its pages are filled with an elegant script differing from that of the map. The text of many of the pages is obscured by drawings and writing in the mapmaker''s hand. It''s nearly impossible to make out the text beneath the mapmaker''s tales of drunken carousing during shore leave.' WHERE `entry`=@QUEST;



-- [Q] [Alliance] Nolkai's Words (9561)
SET @GAMEOBJECT := 181758; -- Mound of Dirt
SET @QUEST := 9561; -- Nolkai's Words

-- Add missing relation
DELETE FROM `gameobject_involvedrelation` WHERE `quest`=@QUEST;
INSERT INTO `gameobject_involvedrelation` VALUES
(@GAMEOBJECT, @QUEST);

-- Fix required races and add missing complete text
UPDATE `quest_template` SET `RequiredRaces`=2098253, `OfferRewardText`='Grasses and shrubs cover an unnatural bulge in the earth. A few minutes spent digging reveals an old box, almost certainly the one mentioned in Nolkai''s journal.' WHERE `entry`=9561;