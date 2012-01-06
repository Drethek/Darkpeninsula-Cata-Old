-- [Quest] [Horde] Silkwing Cocoons (10617)
SET @QUEST := 26597; -- Silkwing Cocoons

-- Now quest is consegnable
UPDATE `quest_template` SET `RequiredRaces`=946, `QuestFlags`=262280, `SpecialFlags`=0 WHERE `entry`=@QUEST;



-- [Quest] [Alliance] Inoculation (9303)
SET @NPC := 16518; -- Nestlewood Owlkin
SET @QUEST := 9303; -- Inoculation

-- Add RequiredRaces
UPDATE `quest_template` SET `RequiredRaces`=2098253 WHERE `entry`=@QUEST;

-- Removed old ScriptName (works with SAI)
UPDATE `creature_template` SET `ScriptName`='' WHERE `entry`=@NPC;